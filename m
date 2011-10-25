Return-Path: <elizabeth.flanagan@intel.com>
Received: from azsmga101.ch.intel.com (mga07.intel.com [143.182.124.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6DDA2E005BB
	for <yocto@yoctoproject.org>; Tue, 25 Oct 2011 14:26:56 -0700 (PDT)
Received: from mail-qw0-f52.google.com ([209.85.216.52])
	by mga03.intel.com with ESMTP/TLS/RC4-SHA; 25 Oct 2011 14:26:55 -0700
Received: by qaea17 with SMTP id a17so2921060qae.25
	for <yocto@yoctoproject.org>; Tue, 25 Oct 2011 14:26:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.42.155.202 with SMTP id v10mr46205197icw.36.1319578014304;
	Tue, 25 Oct 2011 14:26:54 -0700 (PDT)
Received: by 10.50.190.229 with HTTP; Tue, 25 Oct 2011 14:26:54 -0700 (PDT)
Date: Tue, 25 Oct 2011 14:26:54 -0700
Message-ID: <CAPhnLPCY03dwvhbxYjzia7E-YvjLBy0OBM5hKYWtD8Ut0ZqT9w@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
Subject: [RFC] BSP Release Process.
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
X-List-Received-Date: Tue, 25 Oct 2011 21:26:56 -0000
Content-Type: text/plain; charset=ISO-8859-1

All,

In order to incorporate the work various individuals are doing on BSPs
into a centralized location, I've spent some time documenting what the
current BSP release process is for meta-intel so that I can help
people get their BSPs included into the yocto downloads
directory/yocto release. Please take a few moments to read/comment.

https://wiki.yoctoproject.org/wiki/Third_Party_BSP_Release_Process

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

