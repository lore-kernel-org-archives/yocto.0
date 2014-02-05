Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-qc0-f172.google.com (mail-qc0-f172.google.com
	[209.85.216.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 753D1E0077A
	for <yocto@yoctoproject.org>; Wed,  5 Feb 2014 02:29:43 -0800 (PST)
Received: by mail-qc0-f172.google.com with SMTP id c9so255175qcz.17
	for <yocto@yoctoproject.org>; Wed, 05 Feb 2014 02:29:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=8ZyTywUG7CxeIQNGbpikNVOMLyf/9xpY0zaW6wxHwzk=;
	b=FzPqOYL/FBpU4FJcSu4ctO/h8doAGnzzW/ZMjmp3hnQ9gnqtcLrAQYqM9yRJtgRMeB
	J1mambbmJoMyzoMzu3gqdZVJvsjJz0wl8yKp2AL8LgYGb/HniAjAHLgCFu5eUQdit4ZQ
	Gi/FuNjaxq/2dj2iM1Jm2jmosTB66z1hhF1+f+KnPF1WWIHGJvwpIx99micFAC2w2HE1
	f2ofqfmPZZkzINII7vzhhaJxfc5k0zzmacP6XeVrrmK3But+DUJwlVNyqxj11JO1vgk9
	zDGv5wuswDNnDTXywNM29nDMDsJ3Na9vpey8hqKZ9nebyXPVZk5Lg/0eEjDSqSOhyt9+
	VShA==
X-Gm-Message-State: ALoCoQlaa+FulQafpkQd6L5E8klV/fSU/w+a+vCekU6s8gGD4Bbr8a0FQ03a2syPy6lmG2h1YwUZ
MIME-Version: 1.0
X-Received: by 10.229.105.9 with SMTP id r9mr1151850qco.12.1391596182875; Wed,
	05 Feb 2014 02:29:42 -0800 (PST)
Received: by 10.140.49.239 with HTTP; Wed, 5 Feb 2014 02:29:42 -0800 (PST)
Date: Wed, 5 Feb 2014 10:29:42 +0000
Message-ID: <CAPhnLPCQM=x4VFKqoK5-nqQ9DZ+mbXR_HhC0wxyOfw0CKE9T_g@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, 
	Alexandru C Georgescu <alexandru.c.georgescu@intel.com>,
	Zhao Yi <yi.zhao@windriver.com>, Otavio Salvador <otavio@ossystems.com.br>
Subject: Weekly Build available.
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
X-List-Received-Date: Wed, 05 Feb 2014 10:29:48 -0000
Content-Type: text/plain; charset=ISO-8859-1

The weekly build will soon be available at:

http://autobuilder.yoctoproject.org/pub/nightly/20140205-1

bitbake     b84d010144de687667cf855ddcb41c9b863c236e
eclipse-poky-juno     26bfc407781aa185f244a47ba63120343cee4a37
eclipse-poky-kepler     f4d8e9243f9355424a01e2d72fd1abbf68d3bb7c
meta-fsl-arm     caea34d0a4109720fba93897ea4a84a72b26189a
meta-fsl-ppc     1536064e02f15761e90f784d88f2a930784f7f3d
meta-intel     c5ca9f67121bff0b7400a175f005212234906b37
meta-minnow     32e4d6f17917027c3babe1ab738480de9691024d
meta-qt3     4772424ab69908d4e3b9d6d4717ca889468e6acd
oecore     8461283a648d7c5affd51971ebd9b35a8a4c625f
poky     4e9eb77108c7e628ebd00ec848b8bc034802e197

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

