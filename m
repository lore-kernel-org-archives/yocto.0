Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7AF97E003C1; Tue,  1 Jul 2014 17:28:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-pd0-f177.google.com (mail-pd0-f177.google.com
	[209.85.192.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5ABA4E00289
	for <yocto@yoctoproject.org>; Tue,  1 Jul 2014 17:27:53 -0700 (PDT)
Received: by mail-pd0-f177.google.com with SMTP id y10so10818805pdj.8
	for <yocto@yoctoproject.org>; Tue, 01 Jul 2014 17:27:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
	:subject:content-type;
	bh=5qji1Hi8nDRruoKJg5ONHHVBZyg1WapiCTND6ot0hmw=;
	b=LXsyyc8pNwGdsmIFF20GDvpqQN1C5IO8o963baJRgEK0MEucXIo6rMc1W21sspPBf0
	R5UJhCMr/HKtu2jA34h9+Pjx5AVtP2V40HJs6Gd+t9FNR1dbl05PGQXIuAPay5JeuFuq
	yJiu3oIjEb3q2SSUwIpdwXrWt30w0K29SG8aULxNbH+ab0NAg3M0TzkXUqdTvTp6OhxR
	iBODlFgAk9XjkGU5I+EZambimGTE55ssQDvlkC/zW6xS8/8ehNkncC2KO6wFhiNd7F4r
	Urf3VK26L1zxNE//FzrWAFv4SnJM8djwZVc12LcLVPCYB6DryUYQn4dTnSz51iBkEkM/
	jM1Q==
X-Gm-Message-State: ALoCoQm72uAtpvaTcs5nhALU4mP26iOpA8ojyC2xj47YjcC671Ikx8tL9I00Bz60H8DzweovPlHi
X-Received: by 10.68.200.10 with SMTP id jo10mr65756111pbc.143.1404260872669; 
	Tue, 01 Jul 2014 17:27:52 -0700 (PDT)
Received: from [10.7.100.231] (64.2.3.195.ptr.us.xo.net. [64.2.3.195])
	by mx.google.com with ESMTPSA id pu5sm34461666pbb.4.2014.07.01.17.27.51
	for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 01 Jul 2014 17:27:51 -0700 (PDT)
Message-ID: <53B35206.7090800@mvista.com>
Date: Tue, 01 Jul 2014 17:27:50 -0700
From: akuster <akuster@mvista.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: regarding : [PATCH] libcap-ng: resolved issue related with LONG_BIT definition.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 02 Jul 2014 00:28:06 -0000
Content-Type: multipart/alternative;
	boundary="------------070503010609010908080902"

--------------070503010609010908080902
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

There was a patch posted on April 7th ( sorry don't have original email)

From: "Alexandru.Vaduva" <Alexandru.Vaduva at enea.com  <https://lists.yoctoproject.org/listinfo/yocto>>

The problem is well known for 64 bits architectures and the solution
is offered in the same recibe but in the meta-selinux layer.

Signed-off-by: Alexandru.Vaduva <Alexandru.Vaduva at enea.com  <https://lists.yoctoproject.org/listinfo/yocto>>
---
  recipes-security/libcap-ng/libcap-ng/python.patch |   39 +++++++++++++++++++++
  recipes-security/libcap-ng/libcap-ng_0.7.3.bb     |   38 ++++++++++++++++----
  2 files changed, 71 insertions(+), 6 deletions(-)
  create mode 100644 recipes-security/libcap-ng/libcap-ng/python.patch


I am seeing a build issue with meta-security that this patch fixes.

was it Nack'd?

regards,
Armin

--------------070503010609010908080902
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=ISO-8859-1">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    There was a patch posted on April 7th ( sorry don't have original
    email)<br>
    <pre>From: "Alexandru.Vaduva" &lt;<a href="https://lists.yoctoproject.org/listinfo/yocto">Alexandru.Vaduva at enea.com</a>&gt;

The problem is well known for 64 bits architectures and the solution
is offered in the same recibe but in the meta-selinux layer.

Signed-off-by: Alexandru.Vaduva &lt;<a href="https://lists.yoctoproject.org/listinfo/yocto">Alexandru.Vaduva at enea.com</a>&gt;
---
 recipes-security/libcap-ng/libcap-ng/python.patch |   39 +++++++++++++++++++++
 recipes-security/libcap-ng/libcap-ng_0.7.3.bb     |   38 ++++++++++++++++----
 2 files changed, 71 insertions(+), 6 deletions(-)
 create mode 100644 recipes-security/libcap-ng/libcap-ng/python.patch


</pre>
    I am seeing a build issue with meta-security that this patch fixes.<br>
    <br>
    was it Nack'd?<br>
    <br>
    regards,<br>
    Armin
  </body>
</html>

--------------070503010609010908080902--
