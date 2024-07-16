Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E8B8EC3DA49
	for <webhook@archiver.kernel.org>; Tue, 16 Jul 2024 15:58:42 +0000 (UTC)
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com [209.85.219.172])
 by mx.groups.io with SMTP id smtpd.web11.14086.1721144674185734925
 for <yocto@lists.yoctoproject.org>;
 Tue, 16 Jul 2024 08:44:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista.com header.s=google header.b=Pifpsyu9;
 spf=pass (domain: mvista.com, ip: 209.85.219.172, mailfrom: sdoshi@mvista.com)
Received: by mail-yb1-f172.google.com with SMTP id 3f1490d57ef6-e05e0e3fbbeso368419276.3
        for <yocto@lists.yoctoproject.org>; Tue, 16 Jul 2024 08:44:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista.com; s=google; t=1721144673; x=1721749473; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=zjkhH+wHS1PkTzDljniK6VayICF1mqkeIUg1SzwqqA4=;
        b=Pifpsyu95zFgfe2mPoSJ6RSsGKj7yOK/xp1zjmDMBFUE5orXKr0Cs+cvC0nkKuF1ux
         UarUPSxRjLuK8TU87fu5S0xEwjkpnQQCE7pfSIvZYhn0gXXRwKH8fRQceEGdiYiG0EkY
         w9ojcd0iehTGeLKsoZAeGbeR79hYL9cmODvdw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721144673; x=1721749473;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zjkhH+wHS1PkTzDljniK6VayICF1mqkeIUg1SzwqqA4=;
        b=WYur8kIK/BNDYkd9bc8z+5KPU8+AodzZ52W+mih9mlyRwXvcz+zBFgPlM1BWOL0pO+
         k2K4Iu0Lyaf6CDRl7zg9ub5ATnpgDuIlenIC2vGODLF1Lk7DFaZcdI+LBSePi8IgH00F
         aMpufVhz08NQQ7wU2Hz1uLwHbl54PipnPn8s85t+SpucYZpxy/MCcDh6gFu4COV/Z1Cf
         vJkzcEvNlDW813e5Y/E2E860rY+eOaCAUk+8D2w+9+nQwvfyhZhcgPH4BxtorPXH+gIo
         Fjykyq0LZxf70IcXrYekpGFgjK3poDhn0/91kYyxP1TEmaexu1ka08gJJmufw7LFYSxk
         TwBQ==
X-Gm-Message-State: AOJu0YyMKMZtbxaLPM8exvVGmulMvsZU8J1gTW2uupk24kOnu85FpBYI
	iERK1V1IK/TqWVeF1s9Hg89JadEqySwnkMjjtRtsNmyz7uLt+N7i7RW3hCujTCmg9xojwpkpsJQ
	g
X-Google-Smtp-Source: AGHT+IH332ifn+xBueri2F/XGwG7G85TU89tWKtmjBlYiCrN4IfMy5N3rPkbkv2ihmh3OVEVRzN2EA==
X-Received: by 2002:a05:6902:1107:b0:e03:9c35:1712 with SMTP id 3f1490d57ef6-e05d56b8e58mr3692355276.20.1721144672363;
        Tue, 16 Jul 2024 08:44:32 -0700 (PDT)
Received: from siddharth-latitude-3420.mvista.com ([157.32.47.147])
        by smtp.gmail.com with ESMTPSA id 3f1490d57ef6-e05a45a3fa0sm1268517276.4.2024.07.16.08.44.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Jul 2024 08:44:32 -0700 (PDT)
From: "Siddharth Doshi" <sdoshi@mvista.com>
To: yocto@lists.yoctoproject.org
Cc: Siddharth Doshi <sdoshi@mvista.com>
Subject: [meta-security][master][scarthgap][PATCH] Suricata: Security Fix for CVE-2024-37151, CVE-2024-38534, CVE-2024-38535, CVE-2024-38536
Date: Tue, 16 Jul 2024 21:14:16 +0530
Message-Id: <20240716154416.225013-1-sdoshi@mvista.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 16 Jul 2024 15:58:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63516

From: Siddharth Doshi <sdoshi@mvista.com>

Upstream-Status: Backport from [https://github.com/OISF/suricata/commit/aab7f35c76721df19403a7c0c0025feae12f3b6b, https://github.com/OISF/suricata/commit/a753cdbe84caee3b66d0bf49b2712d29a50d67ae, https://github.com/OISF/suricata/commit/c82fa5ca0d1ce0bd8f936e0b860707a6571373b2, https://github.com/OISF/suricata/commit/2bd3bd0e318f19008e9fe068ab17277c530ffb92]

CVE's Fixed:
CVE-2024-37151 suricata: suricata: packet reassembly failure, which can lead to policy bypass
CVE-2024-38534 suricata: suricata: Crafted modbus traffic can lead to unlimited resource accumulation within a flow
CVE-2024-38535 suricata: Suricata: can run out of memory when parsing crafted HTTP/2 traffic
CVE-2024-38536 suricata: NULL pointer dereference when http.memcap is reached

Signed-off-by: Siddharth Doshi <sdoshi@mvista.com>
---
 .../suricata/files/CVE-2024-37151.patch       |  53 ++++
 .../suricata/files/CVE-2024-38534.patch       |  44 +++
 .../suricata/files/CVE-2024-38535.patch       |  57 ++++
 .../suricata/files/CVE-2024-38535_pre.patch   | 292 ++++++++++++++++++
 .../suricata/files/CVE-2024-38536.patch       |  40 +++
 recipes-ids/suricata/suricata_7.0.0.bb        |   5 +
 6 files changed, 491 insertions(+)
 create mode 100644 recipes-ids/suricata/files/CVE-2024-37151.patch
 create mode 100644 recipes-ids/suricata/files/CVE-2024-38534.patch
 create mode 100644 recipes-ids/suricata/files/CVE-2024-38535.patch
 create mode 100644 recipes-ids/suricata/files/CVE-2024-38535_pre.patch
 create mode 100644 recipes-ids/suricata/files/CVE-2024-38536.patch

diff --git a/recipes-ids/suricata/files/CVE-2024-37151.patch b/recipes-ids/suricata/files/CVE-2024-37151.patch
new file mode 100644
index 0000000..7e5d8e2
--- /dev/null
+++ b/recipes-ids/suricata/files/CVE-2024-37151.patch
@@ -0,0 +1,53 @@
+From a6052dca1e27f3c8f96ec7be0fe7514c56a0d56f Mon Sep 17 00:00:00 2001
+From: Victor Julien <vjulien@oisf.net>
+Date: Tue, 4 Jun 2024 14:43:22 +0200
+Subject: [PATCH 1/4] defrag: don't use completed tracker
+
+When a Tracker is set up for a IPID, frags come in for it and it's
+reassembled and complete, the `DefragTracker::remove` flag is set. This
+is mean to tell the hash cleanup code to recyle the tracker and to let
+the lookup code skip the tracker during lookup.
+
+A logic error lead to the following scenario:
+
+1. there are sufficient frag trackers to make sure the hash table is
+   filled with trackers
+2. frags for a Packet with IPID X are processed correctly (X1)
+3. frags for a new Packet that also has IPID X come in quickly after the
+   first (X2).
+4. during the lookup, the frag for X2 hashes to a hash row that holds
+   more than one tracker
+5. as the trackers in hash row are evaluated, it finds the tracker for
+   X1, but since the `remove` bit is not checked, it is returned as the
+   tracker for X2.
+6. reassembly fails, as the tracker is already complete
+
+The logic error is that only for the first tracker in a row the `remove`
+bit was checked, leading to reuse to a closed tracker if there were more
+trackers in the hash row.
+
+Ticket: #7042.
+
+Upstream-Status: Backport from [https://github.com/OISF/suricata/commit/aab7f35c76721df19403a7c0c0025feae12f3b6b]
+CVE: CVE-2024-37151
+Signed-off-by: Siddharth Doshi <sdoshi@mvista.com>
+---
+ src/defrag-hash.c | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/src/defrag-hash.c b/src/defrag-hash.c
+index 2f19ce2..87d40f9 100644
+--- a/src/defrag-hash.c
++++ b/src/defrag-hash.c
+@@ -591,7 +591,7 @@ DefragTracker *DefragGetTrackerFromHash (Packet *p)
+                 return dt;
+             }
+ 
+-            if (DefragTrackerCompare(dt, p) != 0) {
++            if (!dt->remove && DefragTrackerCompare(dt, p) != 0) {
+                 /* we found our tracker, lets put it on top of the
+                  * hash list -- this rewards active trackers */
+                 if (dt->hnext) {
+-- 
+2.44.0
+
diff --git a/recipes-ids/suricata/files/CVE-2024-38534.patch b/recipes-ids/suricata/files/CVE-2024-38534.patch
new file mode 100644
index 0000000..14a958c
--- /dev/null
+++ b/recipes-ids/suricata/files/CVE-2024-38534.patch
@@ -0,0 +1,44 @@
+From f1645ea911d4e90b1be8ee5863e8e1a665079cce Mon Sep 17 00:00:00 2001
+From: Philippe Antoine <pantoine@oisf.net>
+Date: Thu, 25 Apr 2024 21:24:33 +0200
+Subject: [PATCH 2/4] modbus: abort flow parsing on flood
+
+Ticket: 6987
+
+Let's not spend more resources for a flow which is trying to
+make us do it...
+
+(cherry picked from commit 37509e8e0ed097f8e0174df754835ac60584fc72)
+
+Upstream-Status: Backport from [https://github.com/OISF/suricata/commit/a753cdbe84caee3b66d0bf49b2712d29a50d67ae]
+CVE: CVE-2024-38534
+Signed-off-by: Siddharth Doshi <sdoshi@mvista.com>
+---
+ rust/src/modbus/modbus.rs | 4 ++--
+ 1 file changed, 2 insertions(+), 2 deletions(-)
+
+diff --git a/rust/src/modbus/modbus.rs b/rust/src/modbus/modbus.rs
+index 246e9ca..d2f7c6b 100644
+--- a/rust/src/modbus/modbus.rs
++++ b/rust/src/modbus/modbus.rs
+@@ -189,7 +189,7 @@ impl ModbusState {
+                                 None => {
+                                     let mut tx = match self.new_tx() {
+                                         Some(tx) => tx,
+-                                        None => return AppLayerResult::ok(),
++                                        None => return AppLayerResult::err(),
+                                     };
+                                     tx.set_events_from_flags(&msg.error_flags);
+                                     tx.request = Some(msg);
+@@ -215,7 +215,7 @@ impl ModbusState {
+                             None => {
+                                 let mut tx = match self.new_tx() {
+                                     Some(tx) => tx,
+-                                    None => return AppLayerResult::ok(),
++                                    None => return AppLayerResult::err(),
+                                 };
+                                 if msg
+                                     .access_type
+-- 
+2.44.0
+
diff --git a/recipes-ids/suricata/files/CVE-2024-38535.patch b/recipes-ids/suricata/files/CVE-2024-38535.patch
new file mode 100644
index 0000000..7ac72c8
--- /dev/null
+++ b/recipes-ids/suricata/files/CVE-2024-38535.patch
@@ -0,0 +1,57 @@
+From 6b00dc36d7527f051c2346f03d20f8d9e5a60138 Mon Sep 17 00:00:00 2001
+From: Philippe Antoine <pantoine@oisf.net>
+Date: Mon, 17 Jun 2024 16:30:49 +0200
+Subject: [PATCH 3/4] http2: do not expand duplicate headers
+
+Ticket: 7104
+
+As this can cause a big mamory allocation due to the quadratic
+nature of the HPACK compression.
+
+(cherry picked from commit 5bd17934df321b88f502d48afdd6cc8bad4787a7)
+
+Upstream-Status: Backport from [https://github.com/OISF/suricata/commit/c82fa5ca0d1ce0bd8f936e0b860707a6571373b2]
+CVE: CVE-2024-38535
+Signed-off-by: Siddharth Doshi <sdoshi@mvista.com>
+---
+ rust/src/http2/detect.rs | 8 ++++----
+ 1 file changed, 4 insertions(+), 4 deletions(-)
+
+diff --git a/rust/src/http2/detect.rs b/rust/src/http2/detect.rs
+index 99261ad..9c2f8ab 100644
+--- a/rust/src/http2/detect.rs
++++ b/rust/src/http2/detect.rs
+@@ -432,11 +432,11 @@ pub fn http2_frames_get_header_value_vec(
+                     if found == 0 {
+                         vec.extend_from_slice(&block.value);
+                         found = 1;
+-                    } else if found == 1 {
++                    } else if found == 1 && Rc::strong_count(&block.name) <= 2 {
+                         vec.extend_from_slice(&[b',', b' ']);
+                         vec.extend_from_slice(&block.value);
+                         found = 2;
+-                    } else {
++                    } else if Rc::strong_count(&block.name) <= 2 {
+                         vec.extend_from_slice(&[b',', b' ']);
+                         vec.extend_from_slice(&block.value);
+                     }
+@@ -469,14 +469,14 @@ fn http2_frames_get_header_value<'a>(
+                     if found == 0 {
+                         single = Ok(&block.value);
+                         found = 1;
+-                    } else if found == 1 {
++                    } else if found == 1 && Rc::strong_count(&block.name) <= 2 {
+                         if let Ok(s) = single {
+                             vec.extend_from_slice(s);
+                         }
+                         vec.extend_from_slice(&[b',', b' ']);
+                         vec.extend_from_slice(&block.value);
+                         found = 2;
+-                    } else {
++                    } else if Rc::strong_count(&block.name) <= 2 {
+                         vec.extend_from_slice(&[b',', b' ']);
+                         vec.extend_from_slice(&block.value);
+                     }
+-- 
+2.44.0
+
diff --git a/recipes-ids/suricata/files/CVE-2024-38535_pre.patch b/recipes-ids/suricata/files/CVE-2024-38535_pre.patch
new file mode 100644
index 0000000..2aa42c4
--- /dev/null
+++ b/recipes-ids/suricata/files/CVE-2024-38535_pre.patch
@@ -0,0 +1,292 @@
+From 390f09692eb99809c679d3f350c7cc185d163e1a Mon Sep 17 00:00:00 2001
+From: Philippe Antoine <pantoine@oisf.net>
+Date: Wed, 27 Mar 2024 14:33:54 +0100
+Subject: [PATCH] http2: use a reference counter for headers
+
+Ticket: 6892
+
+As HTTP hpack header compression allows one single byte to
+express a previously seen arbitrary-size header block (name+value)
+we should avoid to copy the vectors data, but just point
+to the same data, while reamining memory safe, even in the case
+of later headers eviction from the dybnamic table.
+
+Rust std solution is Rc, and the use of clone, so long as the
+data is accessed by only one thread.
+
+Note: This patch is needed to patch CVE-2024-38535 as  it defines Rc.
+Upstream-Status: Backport from [https://github.com/OISF/suricata/commit/390f09692eb99809c679d3f350c7cc185d163e1a]
+Signed-off-by: Siddharth Doshi <sdoshi@mvista.com>
+---
+ rust/src/http2/detect.rs | 19 +++++++------
+ rust/src/http2/http2.rs  |  2 +-
+ rust/src/http2/parser.rs | 61 +++++++++++++++++++++-------------------
+ 3 files changed, 43 insertions(+), 39 deletions(-)
+
+diff --git a/rust/src/http2/detect.rs b/rust/src/http2/detect.rs
+index 9c2f8ab..e068a17 100644
+--- a/rust/src/http2/detect.rs
++++ b/rust/src/http2/detect.rs
+@@ -23,6 +23,7 @@ use crate::core::Direction;
+ use crate::detect::uint::{detect_match_uint, DetectUintData};
+ use std::ffi::CStr;
+ use std::str::FromStr;
++use std::rc::Rc;
+ 
+ fn http2_tx_has_frametype(
+     tx: &mut HTTP2Transaction, direction: Direction, value: u8,
+@@ -404,7 +405,7 @@ fn http2_frames_get_header_firstvalue<'a>(
+     for frame in frames {
+         if let Some(blocks) = http2_header_blocks(frame) {
+             for block in blocks.iter() {
+-                if block.name == name.as_bytes() {
++                if block.name.as_ref() == name.as_bytes() {
+                     return Ok(&block.value);
+                 }
+             }
+@@ -428,7 +429,7 @@ pub fn http2_frames_get_header_value_vec(
+     for frame in frames {
+         if let Some(blocks) = http2_header_blocks(frame) {
+             for block in blocks.iter() {
+-                if block.name == name.as_bytes() {
++                if block.name.as_ref() == name.as_bytes() {
+                     if found == 0 {
+                         vec.extend_from_slice(&block.value);
+                         found = 1;
+@@ -465,7 +466,7 @@ fn http2_frames_get_header_value<'a>(
+     for frame in frames {
+         if let Some(blocks) = http2_header_blocks(frame) {
+             for block in blocks.iter() {
+-                if block.name == name.as_bytes() {
++                if block.name.as_ref() == name.as_bytes() {
+                     if found == 0 {
+                         single = Ok(&block.value);
+                         found = 1;
+@@ -905,8 +906,8 @@ fn http2_tx_set_header(state: &mut HTTP2State, name: &[u8], input: &[u8]) {
+     };
+     let mut blocks = Vec::new();
+     let b = parser::HTTP2FrameHeaderBlock {
+-        name: name.to_vec(),
+-        value: input.to_vec(),
++        name: Rc::new(name.to_vec()),
++        value: Rc::new(input.to_vec()),
+         error: parser::HTTP2HeaderDecodeStatus::HTTP2HeaderDecodeSuccess,
+         sizeupdate: 0,
+     };
+@@ -1061,15 +1062,15 @@ mod tests {
+         };
+         let mut blocks = Vec::new();
+         let b = parser::HTTP2FrameHeaderBlock {
+-            name: "Host".as_bytes().to_vec(),
+-            value: "abc.com".as_bytes().to_vec(),
++            name: "Host".as_bytes().to_vec().into(),
++            value: "abc.com".as_bytes().to_vec().into(),
+             error: parser::HTTP2HeaderDecodeStatus::HTTP2HeaderDecodeSuccess,
+             sizeupdate: 0,
+         };
+         blocks.push(b);
+         let b2 = parser::HTTP2FrameHeaderBlock {
+-            name: "Host".as_bytes().to_vec(),
+-            value: "efg.net".as_bytes().to_vec(),
++            name: "Host".as_bytes().to_vec().into(),
++            value: "efg.net".as_bytes().to_vec().into(),
+             error: parser::HTTP2HeaderDecodeStatus::HTTP2HeaderDecodeSuccess,
+             sizeupdate: 0,
+         };
+diff --git a/rust/src/http2/http2.rs b/rust/src/http2/http2.rs
+index 326030f..d14ca06 100644
+--- a/rust/src/http2/http2.rs
++++ b/rust/src/http2/http2.rs
+@@ -204,7 +204,7 @@ impl HTTP2Transaction {
+ 
+     fn handle_headers(&mut self, blocks: &[parser::HTTP2FrameHeaderBlock], dir: Direction) {
+         for block in blocks {
+-            if block.name == b"content-encoding" {
++            if block.name.as_ref() == b"content-encoding" {
+                 self.decoder.http2_encoding_fromvec(&block.value, dir);
+             }
+         }
+diff --git a/rust/src/http2/parser.rs b/rust/src/http2/parser.rs
+index adabeb2..1a46437 100644
+--- a/rust/src/http2/parser.rs
++++ b/rust/src/http2/parser.rs
+@@ -30,6 +30,7 @@ use nom7::sequence::tuple;
+ use nom7::{Err, IResult};
+ use std::fmt;
+ use std::str::FromStr;
++use std::rc::Rc;
+ 
+ #[repr(u8)]
+ #[derive(Clone, Copy, PartialEq, Eq, FromPrimitive, Debug)]
+@@ -295,8 +296,8 @@ fn http2_frame_header_static(n: u64, dyn_headers: &HTTP2DynTable) -> Option<HTTP
+     };
+     if !name.is_empty() {
+         return Some(HTTP2FrameHeaderBlock {
+-            name: name.as_bytes().to_vec(),
+-            value: value.as_bytes().to_vec(),
++            name: Rc::new(name.as_bytes().to_vec()),
++            value: Rc::new(value.as_bytes().to_vec()),
+             error: HTTP2HeaderDecodeStatus::HTTP2HeaderDecodeSuccess,
+             sizeupdate: 0,
+         });
+@@ -304,23 +305,23 @@ fn http2_frame_header_static(n: u64, dyn_headers: &HTTP2DynTable) -> Option<HTTP
+         //use dynamic table
+         if n == 0 {
+             return Some(HTTP2FrameHeaderBlock {
+-                name: Vec::new(),
+-                value: Vec::new(),
++                name: Rc::new(Vec::new()),
++                value: Rc::new(Vec::new()),
+                 error: HTTP2HeaderDecodeStatus::HTTP2HeaderDecodeIndex0,
+                 sizeupdate: 0,
+             });
+         } else if dyn_headers.table.len() + HTTP2_STATIC_HEADERS_NUMBER < n as usize {
+             return Some(HTTP2FrameHeaderBlock {
+-                name: Vec::new(),
+-                value: Vec::new(),
++                name: Rc::new(Vec::new()),
++                value: Rc::new(Vec::new()),
+                 error: HTTP2HeaderDecodeStatus::HTTP2HeaderDecodeNotIndexed,
+                 sizeupdate: 0,
+             });
+         } else {
+             let indyn = dyn_headers.table.len() - (n as usize - HTTP2_STATIC_HEADERS_NUMBER);
+             let headcopy = HTTP2FrameHeaderBlock {
+-                name: dyn_headers.table[indyn].name.to_vec(),
+-                value: dyn_headers.table[indyn].value.to_vec(),
++                name: dyn_headers.table[indyn].name.clone(),
++                value: dyn_headers.table[indyn].value.clone(),
+                 error: HTTP2HeaderDecodeStatus::HTTP2HeaderDecodeSuccess,
+                 sizeupdate: 0,
+             };
+@@ -348,8 +349,10 @@ impl fmt::Display for HTTP2HeaderDecodeStatus {
+ 
+ #[derive(Clone, Debug)]
+ pub struct HTTP2FrameHeaderBlock {
+-    pub name: Vec<u8>,
+-    pub value: Vec<u8>,
++    // Use Rc reference counted so that indexed headers do not get copied.
++    // Otherwise, this leads to quadratic complexity in memory occupation.
++    pub name: Rc<Vec<u8>>,
++    pub value: Rc<Vec<u8>>,
+     pub error: HTTP2HeaderDecodeStatus,
+     pub sizeupdate: u64,
+ }
+@@ -391,7 +394,7 @@ fn http2_parse_headers_block_literal_common<'a>(
+ ) -> IResult<&'a [u8], HTTP2FrameHeaderBlock> {
+     let (i3, name, error) = if index == 0 {
+         match http2_parse_headers_block_string(input) {
+-            Ok((r, n)) => Ok((r, n, HTTP2HeaderDecodeStatus::HTTP2HeaderDecodeSuccess)),
++            Ok((r, n)) => Ok((r, Rc::new(n), HTTP2HeaderDecodeStatus::HTTP2HeaderDecodeSuccess)),
+             Err(e) => Err(e),
+         }
+     } else {
+@@ -403,7 +406,7 @@ fn http2_parse_headers_block_literal_common<'a>(
+             )),
+             None => Ok((
+                 input,
+-                Vec::new(),
++                Rc::new(Vec::new()),
+                 HTTP2HeaderDecodeStatus::HTTP2HeaderDecodeNotIndexed,
+             )),
+         }
+@@ -413,7 +416,7 @@ fn http2_parse_headers_block_literal_common<'a>(
+         i4,
+         HTTP2FrameHeaderBlock {
+             name,
+-            value,
++            value: Rc::new(value),
+             error,
+             sizeupdate: 0,
+         },
+@@ -435,8 +438,8 @@ fn http2_parse_headers_block_literal_incindex<'a>(
+     match r {
+         Ok((r, head)) => {
+             let headcopy = HTTP2FrameHeaderBlock {
+-                name: head.name.to_vec(),
+-                value: head.value.to_vec(),
++                name: head.name.clone(),
++                value: head.value.clone(),
+                 error: head.error,
+                 sizeupdate: 0,
+             };
+@@ -556,8 +559,8 @@ fn http2_parse_headers_block_dynamic_size<'a>(
+     return Ok((
+         i3,
+         HTTP2FrameHeaderBlock {
+-            name: Vec::new(),
+-            value: Vec::new(),
++            name: Rc::new(Vec::new()),
++            value: Rc::new(Vec::new()),
+             error: HTTP2HeaderDecodeStatus::HTTP2HeaderDecodeSizeUpdate,
+             sizeupdate: maxsize2,
+         },
+@@ -614,8 +617,8 @@ fn http2_parse_headers_blocks<'a>(
+                 // if we error from http2_parse_var_uint, we keep the first parsed headers
+                 if err.code == ErrorKind::LengthValue {
+                     blocks.push(HTTP2FrameHeaderBlock {
+-                        name: Vec::new(),
+-                        value: Vec::new(),
++                        name: Rc::new(Vec::new()),
++                        value: Rc::new(Vec::new()),
+                         error: HTTP2HeaderDecodeStatus::HTTP2HeaderDecodeIntegerOverflow,
+                         sizeupdate: 0,
+                     });
+@@ -765,8 +768,8 @@ mod tests {
+         match r0 {
+             Ok((remainder, hd)) => {
+                 // Check the first message.
+-                assert_eq!(hd.name, ":method".as_bytes().to_vec());
+-                assert_eq!(hd.value, "GET".as_bytes().to_vec());
++                assert_eq!(hd.name, ":method".as_bytes().to_vec().into());
++                assert_eq!(hd.value, "GET".as_bytes().to_vec().into());
+                 // And we should have no bytes left.
+                 assert_eq!(remainder.len(), 0);
+             }
+@@ -782,8 +785,8 @@ mod tests {
+         match r1 {
+             Ok((remainder, hd)) => {
+                 // Check the first message.
+-                assert_eq!(hd.name, "accept".as_bytes().to_vec());
+-                assert_eq!(hd.value, "*/*".as_bytes().to_vec());
++                assert_eq!(hd.name, "accept".as_bytes().to_vec().into());
++                assert_eq!(hd.value, "*/*".as_bytes().to_vec().into());
+                 // And we should have no bytes left.
+                 assert_eq!(remainder.len(), 0);
+                 assert_eq!(dynh.table.len(), 1);
+@@ -802,8 +805,8 @@ mod tests {
+         match result {
+             Ok((remainder, hd)) => {
+                 // Check the first message.
+-                assert_eq!(hd.name, ":authority".as_bytes().to_vec());
+-                assert_eq!(hd.value, "localhost:3000".as_bytes().to_vec());
++                assert_eq!(hd.name, ":authority".as_bytes().to_vec().into());
++                assert_eq!(hd.value, "localhost:3000".as_bytes().to_vec().into());
+                 // And we should have no bytes left.
+                 assert_eq!(remainder.len(), 0);
+                 assert_eq!(dynh.table.len(), 2);
+@@ -820,8 +823,8 @@ mod tests {
+         match r3 {
+             Ok((remainder, hd)) => {
+                 // same as before
+-                assert_eq!(hd.name, ":authority".as_bytes().to_vec());
+-                assert_eq!(hd.value, "localhost:3000".as_bytes().to_vec());
++                assert_eq!(hd.name, ":authority".as_bytes().to_vec().into());
++                assert_eq!(hd.value, "localhost:3000".as_bytes().to_vec().into());
+                 // And we should have no bytes left.
+                 assert_eq!(remainder.len(), 0);
+                 assert_eq!(dynh.table.len(), 2);
+@@ -856,8 +859,8 @@ mod tests {
+         match r2 {
+             Ok((remainder, hd)) => {
+                 // Check the first message.
+-                assert_eq!(hd.name, ":path".as_bytes().to_vec());
+-                assert_eq!(hd.value, "/doc/manual/html/index.html".as_bytes().to_vec());
++                assert_eq!(hd.name, ":path".as_bytes().to_vec().into());
++                assert_eq!(hd.value, "/doc/manual/html/index.html".as_bytes().to_vec().into());
+                 // And we should have no bytes left.
+                 assert_eq!(remainder.len(), 0);
+                 assert_eq!(dynh.table.len(), 2);
+-- 
+2.44.0
+
diff --git a/recipes-ids/suricata/files/CVE-2024-38536.patch b/recipes-ids/suricata/files/CVE-2024-38536.patch
new file mode 100644
index 0000000..2d4b3d7
--- /dev/null
+++ b/recipes-ids/suricata/files/CVE-2024-38536.patch
@@ -0,0 +1,40 @@
+From 4026bca7f04c419dd3f3ba17a1af17bbcbcf18bc Mon Sep 17 00:00:00 2001
+From: Philippe Antoine <pantoine@oisf.net>
+Date: Fri, 17 May 2024 09:39:52 +0200
+Subject: [PATCH 4/4] http: fix nul deref on memcap reached
+
+HttpRangeOpenFileAux may return NULL in different cases, including
+when memcap is reached.
+But is only caller did not check it before calling HttpRangeAppendData
+which would dereference the NULL value.
+
+Ticket: 7029
+(cherry picked from commit fd262df457f67f2174752dd6505ba2ed5911fd96)
+
+Upstream-Status: Backport from [https://github.com/OISF/suricata/commit/2bd3bd0e318f19008e9fe068ab17277c530ffb92]
+CVE: CVE-2024-38536
+Signed-off-by: Siddharth Doshi <sdoshi@mvista.com>
+---
+ src/app-layer-htp-range.c | 6 ++++--
+ 1 file changed, 4 insertions(+), 2 deletions(-)
+
+diff --git a/src/app-layer-htp-range.c b/src/app-layer-htp-range.c
+index 3cdde35..f0d75a9 100644
+--- a/src/app-layer-htp-range.c
++++ b/src/app-layer-htp-range.c
+@@ -351,8 +351,10 @@ static HttpRangeContainerBlock *HttpRangeOpenFile(HttpRangeContainerFile *c, uin
+ {
+     HttpRangeContainerBlock *r =
+             HttpRangeOpenFileAux(c, start, end, total, sbcfg, name, name_len, flags);
+-    if (HttpRangeAppendData(sbcfg, r, data, len) < 0) {
+-        SCLogDebug("Failed to append data while opening");
++    if (r) {
++        if (HttpRangeAppendData(sbcfg, r, data, len) < 0) {
++            SCLogDebug("Failed to append data while opening");
++        }
+     }
+     return r;
+ }
+-- 
+2.44.0
+
diff --git a/recipes-ids/suricata/suricata_7.0.0.bb b/recipes-ids/suricata/suricata_7.0.0.bb
index 21d4306..1f3b694 100644
--- a/recipes-ids/suricata/suricata_7.0.0.bb
+++ b/recipes-ids/suricata/suricata_7.0.0.bb
@@ -16,6 +16,11 @@ SRC_URI += " \
     file://suricata.service \
     file://run-ptest \
     file://fixup.patch \
+    file://CVE-2024-37151.patch \
+    file://CVE-2024-38534.patch \
+    file://CVE-2024-38535_pre.patch \
+    file://CVE-2024-38535.patch \
+    file://CVE-2024-38536.patch \
     "
 
 inherit autotools pkgconfig python3native systemd ptest cargo cargo-update-recipe-crates
-- 
2.34.1


