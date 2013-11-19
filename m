Return-Path: <ross.burton@intel.com>
Received: from mail-vc0-f182.google.com (mail-vc0-f182.google.com
	[209.85.220.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0BA08E00507
	for <yocto@yoctoproject.org>; Tue, 19 Nov 2013 13:23:25 -0800 (PST)
Received: by mail-vc0-f182.google.com with SMTP id ie18so5265160vcb.13
	for <yocto@yoctoproject.org>; Tue, 19 Nov 2013 13:23:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=EhebFgm1ukXJVa/rhEKnAlV3O3zt6289KJARKeCxTro=;
	b=BgFuxII6/pm/3omIF7NKXKrjSe9iTuYC4M+7U/qCj4gf59FX9iICaHTam4TfdPXxOD
	pBvdvYOL4YIExFfABLVmar/SH5UwtPPxH52I0wE6ZBqF8a1UhBakbffY7O8wat6jBSCG
	XrXSVsAa+rluL8A7MJzeCvtBsdZOfc2h5VW03YNgUq0Rz1LtIh03ET2hOmqxn3Dj3Wsb
	QvgUAQyqaRsBvSuH5o+KIASBbU/3TDGI8SWpDzRoDuaXyxJ/sy7GvRxufEryxXevBOSK
	NEmpfw7vru5ClGflSnxlTurr73ZRtzDANwuiqrKM1S/rLxAzWJEaIVAVdRR/8kywN3PG
	bXJQ==
X-Gm-Message-State: ALoCoQk3yN525Mgo5QIADDW1eBovZMRTOnTCzY3Yr6OxsL+f7EDsJtC+zE/d7xcGcvlyrSCFz6zA
X-Received: by 10.52.37.69 with SMTP id w5mr2079556vdj.32.1384896204163; Tue,
	19 Nov 2013 13:23:24 -0800 (PST)
MIME-Version: 1.0
Received: by 10.220.71.201 with HTTP; Tue, 19 Nov 2013 13:23:04 -0800 (PST)
In-Reply-To: <CALEed8ZZ2dT7sZ+hd=DLzEAhXm9LK_RWsWgVZApc-7KimfqKKg@mail.gmail.com>
References: <CALEed8ZZ2dT7sZ+hd=DLzEAhXm9LK_RWsWgVZApc-7KimfqKKg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 19 Nov 2013 21:23:04 +0000
Message-ID: <CAJTo0LaQv_J1OT=KnmFtW2-gD9iv_dTz1g3LzWwxWf_gHTo2mw@mail.gmail.com>
To: Bernard Mentink <bmentink@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: connman
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
X-List-Received-Date: Tue, 19 Nov 2013 21:23:26 -0000
Content-Type: text/plain; charset=UTF-8

On 19 November 2013 20:52, Bernard Mentink <bmentink@gmail.com> wrote:
> Can anyone help with wifi not being enabled with connman?
>
> I have to use "ifup wlan0" to start my wifi interface, connman refuses to
> bring it up on start, even though I have the ethernet cable un-plugged.
>
> I have enabled wifi in the settings file and have a wifi.conf that is used
> because when I manually bring it up, it connects to the network specified in
> there.

Really this is for the connman list as it's a connman-specific question.

The answer is that connman defaults to turning the wifi "technology"
off by default.  If you want it to be on out of the box then you'll
need to tell connman that.  As an example, have a look at the connman
bbappend (specifically the guacamayo/settings file) here:

https://github.com/Guacamayo/meta-guacamayo/tree/master/meta-guacamayo/recipes-connectivity/connman

Ross

