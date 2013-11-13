Return-Path: <hans.beckerus@gmail.com>
Received: from mail-oa0-f45.google.com (mail-oa0-f45.google.com
	[209.85.219.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 366ECE01389
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2013 08:08:23 -0800 (PST)
Received: by mail-oa0-f45.google.com with SMTP id m1so687202oag.18
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2013 08:08:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=jMrzVXIvg7UvH/HRw1QCwLfJ8kPvnbSbmdMh9D6TzlE=;
	b=sjoZs+ucXT7iRSORSAtCfU+u4i0oltykimYo3H18a5gQ5V5CqqIsgB9ojGiIlXkZls
	m1B6szFSvo6D3+A3wktoF5AUlVk93ekL7HSoCZrDF0Q1hu38Xa6Zgqlj12a1Gd8YB5E4
	RGHb88SBehIpOjX1Zg7FuH3MIrq19BeDv5AnMDN21Lm6Z/AmCjskYBMb6Evx8OUf38Sq
	95ds36MaZLyw1vV14zB+dkb6gPZTVh1UJ/w38RrHQ+7hdrr8LNsw8uxVwdgPSD87GFfQ
	Q/V+6nLHeqjl1qe3PIi2JVksZveMkUUhIJQwJovChLJK02Nvht7o3cNKiy2Tk82GHCPj
	5lnw==
MIME-Version: 1.0
X-Received: by 10.182.213.166 with SMTP id nt6mr13532575obc.53.1384358903322; 
	Wed, 13 Nov 2013 08:08:23 -0800 (PST)
Received: by 10.182.44.8 with HTTP; Wed, 13 Nov 2013 08:08:23 -0800 (PST)
Date: Wed, 13 Nov 2013 17:08:23 +0100
Message-ID: <CAFyqS9rjCskZBJypK9AO-f5GLDEnkSFfhsfrMK8c5cKYdp_4nQ@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: /var/log/dmesg: should it not be created?
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
X-List-Received-Date: Wed, 13 Nov 2013 16:08:24 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi. I can see that in ./recipes-core/initscripts/initscripts_1.0.bb,
the dmesg.sh script is installed in /etc/init.d. But I can not see
that it is being added to any run-levels, not even single-user mode.
Is there some reason for only installing the init script but not
actually activating it? Not that I really need it, but some
clarification to why it works as it does would be appreciated :)

Thanks.
Hans

