Return-Path: <anders@chargestorm.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2FB35E00B2E; Tue, 24 Nov 2015 02:23:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.215.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f44.google.com (mail-lf0-f44.google.com
	[209.85.215.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8AB00E00457
	for <yocto@yoctoproject.org>; Tue, 24 Nov 2015 02:23:08 -0800 (PST)
Received: by lfaz4 with SMTP id z4so14503104lfa.0
	for <yocto@yoctoproject.org>; Tue, 24 Nov 2015 02:23:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=chargestorm-se.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:subject:message-id:mail-followup-to:references
	:mime-version:content-type:content-disposition:in-reply-to
	:organization:user-agent;
	bh=XC74iDiscHlC5jgFDP1JUdQlvDMZqzBOi1qcrRZ+qXA=;
	b=QrmijRqrxOwZ6RNSHgNBr8BYZiT2ILmagY86Rcr4mA6xgIKnr2P90P8K6a524qQELi
	BTwk9ht2wESBWmw8soCNOJfRdqaQN7X91CeTxTIILPmH7FBXrhIEeQyYHkkGF6E5+gyq
	ocZTma6v9QGnJzw6wkV6l/3mFsS2oEgO5fKSSIW+dhc1X4oFxL6qVVqG4ya367wNs9+Q
	54gIxExb6t/LDIboDZqpojlXBX+sOdCkBtmu8yJvjwlnoP2AZ0WPSHMTBfSHrNOww8Lg
	IW99pum5PtLxamZiI7/suMntIEt+StBSqN7LMQpqMUIt7uibKT5ZLcTKdu+z8Z5J5uTc
	/okg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:subject:message-id:mail-followup-to
	:references:mime-version:content-type:content-disposition
	:in-reply-to:organization:user-agent;
	bh=XC74iDiscHlC5jgFDP1JUdQlvDMZqzBOi1qcrRZ+qXA=;
	b=BDe8gPJRKS52j6Wk3nbgXPUkpUIjWyTGln74fulG1BgktMtauXxKJA6JZDVpb9YlvE
	Vci0sbJPuo0qy1j5D/NzKOR9GJKXPEKM1tF674/Rk9TNGwaZG1F3rrLcovA6UZjHflhT
	UTntn75WL7LQIPHzN7pqHoTXFUKLUCRaHQkGJJq1SlM4MNvvkK2WeAbbgA9oXVMp0cDu
	YO77fnvx42hRIO/2oWbEe5WoVXIUtvatU6SXic8kAsRaMKuQuRlYWMYXSxaYpv3HKFGJ
	Ru/2fpt7vnR4jEAZAYtC+6qJAk01aJE5ACL+8t302PxjK0iypWYOU+GDFKygVhLH8BDd
	hfqA==
X-Gm-Message-State: ALoCoQnrxVlSIndHOBzC20VHgVqmbuCpWHWPadb/SfQemOTj1lTtC/LacYIEBw5t8Z6AYlXmEc7B
X-Received: by 10.25.85.78 with SMTP id j75mr12645059lfb.46.1448360587032;
	Tue, 24 Nov 2015 02:23:07 -0800 (PST)
Received: from ad.chargestorm.se (h83-209-191-235.dynamic.se.alltele.net.
	[83.209.191.235]) by smtp.gmail.com with ESMTPSA id
	xt2sm2503365lbb.47.2015.11.24.02.23.06 for <yocto@yoctoproject.org>
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 24 Nov 2015 02:23:06 -0800 (PST)
Date: Tue, 24 Nov 2015 11:23:04 +0100
From: Anders Darander <anders@chargestorm.se>
To: yocto@yoctoproject.org
Message-ID: <20151124102304.GA2165@ad.chargestorm.se>
Mail-Followup-To: yocto@yoctoproject.org
References: <CAEMorpjAtwbSRqPeozr2zGdqiPJ_3bbThExaWyAC+dTiz2+37g@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAEMorpjAtwbSRqPeozr2zGdqiPJ_3bbThExaWyAC+dTiz2+37g@mail.gmail.com>
X-Accept-Language: sv, en, de
X-GPG-Fingerprint: 5AF0 B2E9 78FE 9D75 D110  6F8F 3E31 84D7 920E 938C
X-GPG-Key-Id: 0x920E938C
X-GPG-Keyserver: hkp://keys.gnupg.net
Organization: ChargeStorm AB
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: Read-only rootfs update
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
X-List-Received-Date: Tue, 24 Nov 2015 10:23:13 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

* Ruben Schwarz <r.schwarz@sotec.eu> [151124 10:58]:
> We are using yocto to build a custom linux image for our BeagleBoneBlack
> based hardware. We are using a read-only root file system to prevent data
> lost if power supply is lost.
> Now we wan't to be able to update our device. If it is possiple we wan't to
> use apt/dpkg to do this update. We set up an update server and everything
> works so far.

Ok, so you're only mounting a standard file system read-only.

> Following steps are done to do an update:

> mount -o remount,rw /
> apt-get update
> apt-get upgrade

> Everything works fine, new package versions are installed. After rebooting
> the device and executing "dpkg -l" the old package version is listed.
> Output of mount shows that there is tmpfs on /var/lib which hides the
> /var/lib/dpkg folder.

I guess that if you want this to work, you'd need to move the original
/var/lib/dpkg folder out to some other in your file system. Then you can
have that new folder mounted on top of your /var/lib tmpfs.

That's probably the easiest way to solve your issue.

> Is there an standard way how to update devices with read-only root file
> systems? Anybody here who did something similar?

Well, it depends.

For consistency, I'm in the camp that prefers to do image-based
upgrades. I.e. rewrite the whole rootfs; though that normallly requires
that you're either switching between two alternative rootfs', or that
you have a special maintenance/upgrade rootfs.

Cheers,
Anders

-- 
Anders Darander, Senior System Architect
ChargeStorm AB / eStorm AB

