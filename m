Return-Path: <hans.beckerus@gmail.com>
Received: from mail-ob0-f170.google.com (mail-ob0-f170.google.com
	[209.85.214.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0200CE015AB
	for <yocto@yoctoproject.org>; Tue, 17 Sep 2013 02:04:23 -0700 (PDT)
Received: by mail-ob0-f170.google.com with SMTP id va2so5023326obc.29
	for <yocto@yoctoproject.org>; Tue, 17 Sep 2013 02:04:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=p+x0tB4RuItmxa2HN1NZIw7mgyh+N/ipzTMfgcQ60Ac=;
	b=jSiKO4EXpJVvKLEni+Qj24vXq64DU2ORkUJtMtn3azm0e9ROLS4fRiG2aPhBJmlyVg
	l8fQQBFlDQHHOjPsuHDJTJCZ6454Eb14q5+bbjAOj4b+A5EfWCj2Dvnx5hH/kU72xXlA
	JfW1+Kr5C9MB/RzSLiYJlkgt3m0/8op9pGmRBSyNWxEJlM4ImfAbD5BR7i787FLNu2Dd
	Qg1vXGtMW0Dz3Wm/tPphjpqaaYjjbrUHp4ijl0obqXkUubtq/+tkAVbh5bl5FgHWmKnS
	xyIquRO5FBfADaVN1bbw817bfMKGe1mkjWUnN+tayj544Dr36eUfe0yKR1XPnpVYi1hA
	wxaQ==
MIME-Version: 1.0
X-Received: by 10.60.17.136 with SMTP id o8mr29348232oed.7.1379408662961; Tue,
	17 Sep 2013 02:04:22 -0700 (PDT)
Received: by 10.182.44.8 with HTTP; Tue, 17 Sep 2013 02:04:21 -0700 (PDT)
Date: Tue, 17 Sep 2013 11:04:21 +0200
Message-ID: <CAFyqS9ock8ydDEd0SE5whhWRKuRnQmTKOzq6Ad7rTYHHtosEuA@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: DISTRO_FEATURES_append, anyway to override?
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
X-List-Received-Date: Tue, 17 Sep 2013 09:04:26 -0000
Content-Type: text/plain; charset=ISO-8859-1

We are using a user defined distro, based on poky-tiny. That is, we
'require' poky-tiny.conf.
It is done this way in order not clutter our distro configuration with
too much magics and defaults.
However, one problem now is that poky-tiny also 'require' poky.conf,
and implicitly is doing

DISTRO_FEATURES_append = " largefile opengl multiarch wayland"

In our configuration we do

DISTRO_FEATURES_append = "nfs"

The resulting DISTRO_FEATURES (as checked by bitbake -e) shows that
everything appended by poky is also added to the custom distro.
Now, we would like to remove everything but the large file support as
added by poky. How do we do that? Is the only practical way to copy
everything from poky.conf and poky-tiny.conf into the custom distro? I
really would like to avoid that if possible.
I guess that the new feature DISTRO_FEATURES_remove might help us
here, but unfortunately we can no step up to such a late version in
a foreseeable future.

Thanks.
Hans

