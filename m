Return-Path: <autif.mlist@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC5D6E00723
	for <yocto@yoctoproject.org>; Wed,  6 Jun 2012 13:01:03 -0700 (PDT)
Received: by pbbrq8 with SMTP id rq8so12084235pbb.35
	for <yocto@yoctoproject.org>; Wed, 06 Jun 2012 13:01:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=s7yWBkOet2rT6Y9+OfGRWOt8E7vLyXhkgYy8fkdDtRc=;
	b=AZa3+WxZ5MRQ98aJGf/q2eSpL39Uk3dlh1hP57Xj5ENG8c4XJDCFAR+IcTOAJms/CR
	TQiHa865hYTG36Vo+MxZuSVhoUGKEv4vGW0zQCy89R5vJkT+b2RIINgNK0ewSAgojbvf
	taWv0ffSD6Tz7wen52QhZisKNgRCi+HPfrCj8KnB2zWmN9Bf+cMIJ3O3GiXdjXDOUMev
	n0b0ccwA3aNkYBFgUazXrwktpfkfxNNMqsuV7stRNAzcfEczh/WNLdx2P0BGHAM6OyDE
	KfljpS5l9VBdazXDZil/mR0EpxiRhW1rnaP2Hp++u/5a/+8rbn3Sc0ANa9R+yj2eBtEC
	evog==
MIME-Version: 1.0
Received: by 10.68.190.10 with SMTP id gm10mr15076525pbc.163.1339012861718;
	Wed, 06 Jun 2012 13:01:01 -0700 (PDT)
Received: by 10.68.14.166 with HTTP; Wed, 6 Jun 2012 13:01:01 -0700 (PDT)
In-Reply-To: <D22E2C55-3EB4-4D0B-B300-2A991D38CCD0@keylevel.com>
References: <D22E2C55-3EB4-4D0B-B300-2A991D38CCD0@keylevel.com>
Date: Wed, 6 Jun 2012 16:01:01 -0400
Message-ID: <CADzUK1LMibQZJAv6tqF5PF+wmQNPd785RpsnwTPgDPVMxruL5Q@mail.gmail.com>
From: Autif Khan <autif.mlist@gmail.com>
To: Chris Tapp <opensource@keylevel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: IMAGE_FSTYPES - what formats are supported?
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
X-List-Received-Date: Wed, 06 Jun 2012 20:01:04 -0000
Content-Type: text/plain; charset=ISO-8859-1

> Is the list of values for IMAGE_FSTYPES documented somewhere? Searching though the documentation shows references to it, but not a list of values that are supported.

meta/classes/image_types.bbclass

look for IMAGE_TYPES

