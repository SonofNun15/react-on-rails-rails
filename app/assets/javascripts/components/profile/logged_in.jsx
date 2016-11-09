import RailsForm from '../rails_form.jsx'

class LoggedIn extends React.Component {
  render() {
    return (
      <div className="dropdown">
        <div className="profile" data-toggle="dropdown" tabIndex="0">
          <span>{this.props.name}</span>
          <div className="pic">
            <img src={'https://www.gravatar.com/avatar/' + this.props.gravatarHash + '?s=96&d=identicon'}
                  width="48" height="48" />
          </div>
          <i className="fa fa-caret-down"></i>
        </div>
        <ul className="dropdown-menu dropdown-menu-right">
          <li>
            <a href="/profile">
              <i className="fa fa-user"></i> Profile
            </a>
          </li>
          <li role="separator" className="divider"></li>
          <li>
            <RailsForm method="post" action="/logout" contents={
              <button type="submit">
                <i className="fa fa-sign-out"></i> Logout
              </button>
            } />
          </li>
        </ul>
      </div>
    )
  }
}

LoggedIn.propTypes = {
  name: React.PropTypes.string,
  gravatarHash: React.PropTypes.string,
}

export default LoggedIn
