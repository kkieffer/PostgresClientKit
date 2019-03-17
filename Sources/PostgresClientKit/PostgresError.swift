//
//  PostgresError.swift
//  PostgresClientKit
//
//  Copyright 2019 David Pitfield and the PostgresClientKit contributors
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

/// Errors thrown by PostgresClientKit.
public enum PostgresError: Error {
    
    /// The Postgres server has a parameter set to a value incompatible with PostgresClientKit.
    case invalidParameterValue(name: String, value: String, requiredValue: String)
        
    /// The Postgres server reported an internal error or returned an invalid response.
    case serverError(description: String)
    
    /// A network error occurred in communicating with the Postgres server.
    case socketError(cause: Error)
    
    /// The Postgres server reported a SQL error.
    case sqlError(notice: Notice)
    
    /// The authentication type required by the Postgres server is not supported by
    /// PostgresClientKit.
    case unsupportedAuthenticationType(authenticationType: String)
}

// EOF
