//===----------------------------------------------------------------------===//
//
// This source file is part of the RediStack open source project
//
// Copyright (c) 2023 Apple Inc. and the RediStack project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of RediStack project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

/// A description of a single shard that is part of a redis cluster
@available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
public protocol RedisClusterShardDescriptionProtocol: Identifiable, Sendable {
    associatedtype NodeDescription: RedisClusterNodeDescriptionProtocol

    /// The shard's primary node
    var master: NodeDescription { get }  // #ignore-unacceptable-language

    /// The shard's replica nodes
    var replicas: [NodeDescription] { get }
}
