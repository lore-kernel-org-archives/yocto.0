Return-Path: <elvis.dowson@gmail.com>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E7B6E01400
	for <yocto@yoctoproject.org>; Wed, 15 Aug 2012 12:16:13 -0700 (PDT)
Received: by yhfq46 with SMTP id q46so2703021yhf.35
	for <yocto@yoctoproject.org>; Wed, 15 Aug 2012 12:16:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to:x-mailer;
	bh=7QjNt6/bPLPi9n6CQhpk4lMZ3EcuIbPWdZu/keWyuBI=;
	b=Qu7NkQASRwOONK4WGHx3z7dhUFfJYAMvJ9Ed7qv7RC+V5OAos0dCLO7G2f1le0af8C
	PI1mHNZ1iZMgXq1ISunqJFyoI0HuvsXW0WTYKfYbiFD/iIU3u7J7e3NQxk0/sf0wP7J3
	WUBFZzbdcwF7ogIFCucmFAjp8ffNxznF52BeC1jBc+2fJsJyU97tQyyqp+omBHQuBrq2
	PtQuq3XvWfpFtfVetgzG8OlP/Sg37UmVanZJC1bdU/QsdQBY+IhixF0z/DAbpR11AJX7
	/W597eM0LDVloexZycOwN2/oPQGLwCJtBtYrhMu7gEXgr3B+Mew9WyFMn0ngOv/CGAVP
	to/w==
Received: by 10.66.77.7 with SMTP id o7mr33705158paw.37.1345058172581;
	Wed, 15 Aug 2012 12:16:12 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id oa5sm962166pbb.14.2012.08.15.12.16.09
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 15 Aug 2012 12:16:10 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1278)
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <4FA581F0.50205@gmail.com>
Date: Wed, 15 Aug 2012 23:16:05 +0400
Message-Id: <5BAF8FDA-CC45-4F6C-B64A-C226F8240F56@gmail.com>
References: <9EE240ED-602E-4E08-817E-1DA7D2831D5F@gmail.com>
	<4FA581F0.50205@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
X-Mailer: Apple Mail (2.1278)
Cc: yocto@yoctoproject.org
Subject: Re: Using distcc with poky
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
X-List-Received-Date: Wed, 15 Aug 2012 19:16:13 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_572484A1-C867-4EC9-9CBA-7CD044D4CE4D"

--Apple-Mail=_572484A1-C867-4EC9-9CBA-7CD044D4CE4D
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi Khem.

On May 5, 2012, at 11:39 PM, Khem Raj wrote:

> On 05/05/2012 10:35 AM, Elvis Dowson wrote:
>> Hi, Is it possible to tell poky to use distcc, to perform a
>> distributed build across two ubuntu 12.04 machines on a netwrok?
>>=20
>=20
> there is icecc have a look at meta/classes/icecc.bbclass

How do I setup yocto to use icecc? I've setup icecc on two ubuntu 12.04 =
machines.

Best regards,

Elvis Dowson=

--Apple-Mail=_572484A1-C867-4EC9-9CBA-7CD044D4CE4D
Content-Transfer-Encoding: 7bit
Content-Type: text/html;
	charset=us-ascii

<html><head></head><body style="word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-line-break: after-white-space; ">Hi Khem.<div><br><div><div>On May 5, 2012, at 11:39 PM, Khem Raj wrote:</div><br class="Apple-interchange-newline"><blockquote type="cite"><div>On 05/05/2012 10:35 AM, Elvis Dowson wrote:<br><blockquote type="cite">Hi, Is it possible to tell poky to use distcc, to perform a<br></blockquote><blockquote type="cite">distributed build across two ubuntu 12.04 machines on a netwrok?<br></blockquote><blockquote type="cite"><br></blockquote><br>there is icecc have a look at meta/classes/icecc.bbclass<font class="Apple-style-span" color="#00721e"><br></font></div></blockquote><br></div><div>How do I setup yocto to use icecc? I've setup icecc on two ubuntu 12.04 machines.</div></div><div><br></div><div>Best regards,</div><div><br></div><div>Elvis Dowson</div></body></html>

--Apple-Mail=_572484A1-C867-4EC9-9CBA-7CD044D4CE4D--
