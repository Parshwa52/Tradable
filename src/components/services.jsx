import React, { Component } from "react";

export class Services extends Component {
  render() {
    return (
      <div id="services" className="text-center">
        <h1>Want to add gold details?</h1>
        <button
                    onClick={() => window.open('/ConsumerCompany')}
                    className="btn btn-warning btn-lg page-scroll"
                  >
                    Click here to add in country production details.
                  </button>{" "}
                  <br/><br/><br/>
      </div>
    );
  }
}

export default Services;
