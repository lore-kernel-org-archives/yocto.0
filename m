Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D26FAE0044A
	for <yocto@yoctoproject.org>; Thu,  9 Aug 2012 11:38:27 -0700 (PDT)
Received: from mail-qc0-f180.google.com ([209.85.216.180])
	by mga09.intel.com with ESMTP/TLS/RC4-SHA; 09 Aug 2012 11:38:27 -0700
Received: by qcmv28 with SMTP id v28so463366qcm.25
	for <yocto@yoctoproject.org>; Thu, 09 Aug 2012 11:38:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type
	:x-gm-message-state;
	bh=V8csGXL1hsWuPt4esJCU56NHcGWs2QafllEDA64Pwoo=;
	b=G/XT6lUrKu1TWADDn06CcIaYkKk0EFDgWm4YSTI3mblYPPHuWa1tAZyd20SADjYZeG
	7KkJiJiJNbk/2z+qOxIsuegZZxNcVriUWOQHdqCU1UOA0F37SjeztTayZsQ/d1S3RILE
	6jGIF/LRtZyFmOkydr72S9tK2x4PDjBs3ElpfVLMqdvwOfbBCjFfwISDsN+jSxTOeYj8
	fEojjrVeIelIKCz3MONXfsgDpR21Zlp8RPFgQwA0EfZVU+2QaQoXC90B9ED5gGBx/jJw
	JeM2UKF8B1Dlfmdo3BY7u+BrL8ExsjhzSJnz7NHmN3VIbdltQOZDDjRRkyuLLTtCqYXs
	vSpw==
MIME-Version: 1.0
Received: by 10.224.174.72 with SMTP id s8mr4309513qaz.91.1344537506419; Thu,
	09 Aug 2012 11:38:26 -0700 (PDT)
Received: by 10.229.178.194 with HTTP; Thu, 9 Aug 2012 11:38:26 -0700 (PDT)
Date: Thu, 9 Aug 2012 11:38:26 -0700
Message-ID: <CAPhnLPAaKgEkLNjD08frwhtDxJbkh8+rERPyGF_buha=Krg1nA@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQlXM5E7CZ1CTLfLBad6nh4tDGNk2Vb38myqMW/InYt4FRkBqfV0JlDBo7u5isA71UlP9HCr
Subject: 1.3_M3.rc1
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
X-List-Received-Date: Thu, 09 Aug 2012 18:38:27 -0000
Content-Type: multipart/alternative; boundary=20cf30334f8f75137704c6d98837

--20cf30334f8f75137704c6d98837
Content-Type: text/plain; charset=ISO-8859-1

All,

We're respinning the M3 release candidate due to a few issues around
persist db, build history and how the autobuilder handles it. The rc1 build
is being built from current master and should be finished later on today.
Hopefully Paul and I have squashed all the issues we've been seeing and
we'll have some green builds this afternoon.

Sorry for any inconvenience for QA. This was an important enough issue to
delay M3.rc1 slightly.

-b

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

--20cf30334f8f75137704c6d98837
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

All,<br><br>We&#39;re respinning the M3 release candidate due to a few issu=
es around persist db, build history and how the autobuilder handles it. The=
 rc1 build is being built from current master and should be finished later =
on today. Hopefully Paul and I have squashed all the issues we&#39;ve been =
seeing and we&#39;ll have some green builds this afternoon.<br>
<br>Sorry for any inconvenience for QA. This was an important enough issue =
to delay M3.rc1 slightly.<br><br>-b<br clear=3D"all"><br>-- <br>Elizabeth F=
lanagan<br>Yocto Project<br>Build and Release<br>

--20cf30334f8f75137704c6d98837--
