Return-Path: <joshua.lock@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id B2E1C4C81002
	for <yocto@yoctoproject.org>; Thu, 18 Nov 2010 06:36:20 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 18 Nov 2010 04:36:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,217,1288594800"; d="scan'208";a="350354186"
Received: from unknown (HELO [10.255.16.146]) ([10.255.16.146])
	by azsmga001.ch.intel.com with ESMTP; 18 Nov 2010 04:36:10 -0800
From: Joshua Lock <joshua.lock@intel.com>
To: yocto@yoctoproject.org
Date: Thu, 18 Nov 2010 12:36:04 +0000
Message-ID: <1290083764.2487.24.camel@scimitar>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.0 (2.32.0-2.fc14) 
Cc: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
Subject: Documenting Poky dependencies
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 18 Nov 2010 12:36:21 -0000
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"

SGkgYWxsLAoKSSd2ZSBiZWVuIHRoaW5raW5nIGFib3V0IHRoZSBpc3N1ZSBvZiBkb2N1bWVudGlu
ZyBQb2t5J3MgZGVwZW5kZW5jaWVzIGluCnRoZSBoYW5kYm9vay4KQXQgdGhlIG1vbWVudCB0aGUg
aGFuZGJvb2sgaW5jbHVkZXMgYSBsaXN0IG9mIHJlcXVpcmVkIHBhY2thZ2VzIGFuZCB0aGVuCmV4
cGxpY2l0bHkgbGlzdHMgY29tbWFuZHMgdG8gaW5zdGFsbCB0aG9zZSBwYWNrYWdlcyBvbiBVYnVu
dHUuCgpXaGF0IEknZCBsaWtlIHRvIHByb3Bvc2UgaXMgdGhhdCB3ZSBsaXN0IHRoZSByZXF1aXJl
ZCBkZXBlbmRlbmNpZXMgaW4KdGhlIGhhbmRib29rIGFuZCB0aGVuIGxpbmsgdG8gYSB3aWtpIHBh
Z2Ugd2hlcmUgd2UgY2FuIGxpc3QgZXhwbGljaXQKaW5zdHJ1Y3Rpb25zIGZvciB2YXJpb3VzIGRp
c3RyaWJ1dGlvbnMuCgpUaGlzIGFsbG93cyB1cyB0byBkb2N1bWVudCB0aGUgcHJvY2VzcyBmb3Ig
YXMgbWFueSBkaXN0cmlidXRpb25zIGFzCnBvc3NpYmxlIHdpdGhvdXQgY2x1dHRlcmluZyB0aGUg
aGFuZGJvb2suIEFuIGFsdGVybmF0aXZlIHdvdWxkIGJlIHRvIGFkZAp0aGlzIHRvIGFuIGFwcGVu
ZGl4IGJ1dCBJIHF1aXRlIGxpa2UgdGhlIGlkZWEgb2YgcGVvcGxlIGJlaW5nIGFibGUgdG8KZWRp
dCBhbmQgYWRkIHRvIHRoaXMgaW5mb3JtYXRpb24gd2l0aG91dCBoYXZpbmcgdG8gdXNlIGdpdC4K
ClRvIHRoYXQgZW5kIEkndmUgYWRkZWQgYSBwYWdlIHRvIG91ciBwdWJsaWMgd2lraSBzaG93aW5n
IHRoZSBzdGVwcyBJIGhhZAp0byB0YWtlIHRvIHJ1biBQb2t5IG9uIEZlZG9yYSBhbmQgQ2VudE9T
IG1hY2hpbmVzOgoKaHR0cHM6Ly93aWtpLnlvY3RvcHJvamVjdC5vcmcvd2lraS9Qb2t5L0dldHRp
bmdTdGFydGVkL0RlcGVuZGVuY2llcwoKQ2hlZXJzLApKb3NodWEKLS0gCkpvc2h1YSBMb2NrCiAg
ICAgICAgSW50ZWwgT3BlbiBTb3VyY2UgVGVjaG5vbG9neSBDZW50cmUKCi0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQpJ
bnRlbCBDb3Jwb3JhdGlvbiAoVUspIExpbWl0ZWQKUmVnaXN0ZXJlZCBOby4gMTEzNDk0NSAoRW5n
bGFuZCkKUmVnaXN0ZXJlZCBPZmZpY2U6IFBpcGVycyBXYXksIFN3aW5kb24gU04zIDFSSgpWQVQg
Tm86IDg2MCAyMTczIDQ3CgpUaGlzIGUtbWFpbCBhbmQgYW55IGF0dGFjaG1lbnRzIG1heSBjb250
YWluIGNvbmZpZGVudGlhbCBtYXRlcmlhbCBmb3IKdGhlIHNvbGUgdXNlIG9mIHRoZSBpbnRlbmRl
ZCByZWNpcGllbnQocykuIEFueSByZXZpZXcgb3IgZGlzdHJpYnV0aW9uCmJ5IG90aGVycyBpcyBz
dHJpY3RseSBwcm9oaWJpdGVkLiBJZiB5b3UgYXJlIG5vdCB0aGUgaW50ZW5kZWQKcmVjaXBpZW50
LCBwbGVhc2UgY29udGFjdCB0aGUgc2VuZGVyIGFuZCBkZWxldGUgYWxsIGNvcGllcy4K


