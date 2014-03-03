Return-Path: <nicolas.dechesne@linaro.org>
Received: from mail-oa0-f48.google.com (mail-oa0-f48.google.com
	[209.85.219.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0155FE008E5
	for <yocto@yoctoproject.org>; Sun,  2 Mar 2014 23:11:15 -0800 (PST)
Received: by mail-oa0-f48.google.com with SMTP id m1so6538445oag.21
	for <yocto@yoctoproject.org>; Sun, 02 Mar 2014 23:11:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:content-transfer-encoding;
	bh=2qmz50/ggKLo1eoNk7PcdfTNeSdTOllLWNeHCuaDVV8=;
	b=bEghfR5IprJPzBxWPW/ILVTq/ziPt/tPAAAXACNHsi8hwH0epfC/JKuIDotXES2EQp
	raUyI51S3KZBu9RIaSRWd5hQFN3yD5Iq9jljgMySJn+/FDi8AUa0XmOEth1v71fwZJZ2
	iROk8WCRFMCm2rPgb9JGuwGky5t38wlaoz+Lhd++zT6pr+l7SW+Dxh3C6X+Mof1zZCZT
	Q9XE7j1X4vut7daPQ6o1FhMsFiDHgkbwdZLNZKjDW89h5XaxgVbeoklXCzj//udV39LO
	fuxqeZHUB7gnRDN5kSJFGkcr2gwAN25zHq4sjctrDKImHqH+aFYzck394F9+A/g6SsvQ
	S0mg==
X-Gm-Message-State: ALoCoQkZOPdz6u+jqO+nv6sIOx0kOYYNLcqrpBgdYydqf4Ies/9ZlAYu4rZ6501YnG+y7vjqnUAT
X-Received: by 10.60.84.143 with SMTP id z15mr14944573oey.27.1393830674275;
	Sun, 02 Mar 2014 23:11:14 -0800 (PST)
MIME-Version: 1.0
Received: by 10.76.182.99 with HTTP; Sun, 2 Mar 2014 23:10:54 -0800 (PST)
In-Reply-To: <FF9E7E89-95A5-4383-8BAF-35B201407F20@keylevel.com>
References: <FF9E7E89-95A5-4383-8BAF-35B201407F20@keylevel.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Mon, 3 Mar 2014 15:10:54 +0800
Message-ID: <CAP71Wjxm7c0LoeHFQ+xPOcgbs4P5i2RRg0TJSGmWfe1xm4-mkw@mail.gmail.com>
To: Chris Tapp <opensource@keylevel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Package 'X' provides... what?
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
X-List-Received-Date: Mon, 03 Mar 2014 07:11:18 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Sun, Mar 2, 2014 at 11:49 PM, Chris Tapp <opensource@keylevel.com> wrote=
:
> I'm in the middle of updating some code (under 'danny') from Gstreamer 0.=
10 to 1.0.
>
> At the moment I pull in things like 'gst-plugins-base-playbin' by having =
a 'DEPENDS' in a recipe. However, that's not what it's called in Gstreamer =
1.0.
>
> How do I find out what (e.g.) gstreamer1.0-plugins-base.bb actually provi=
des? Once I've got it to build for one plugin I can go to the work director=
y to see what gets packaged to find the names of other plugins, but I can't=
 find a way in to start with. Is there some bitbake magic I can use to list=
 what's provided by a recipe?

you can try:

bitbake -e gstreamer1.0-plugins-base | grep ^PACKAGES

basically, you are looking for the content of the variable 'PACKAGES'

