Return-Path: <jfabernathy@gmail.com>
Received: from mail-yx0-f176.google.com (mail-yx0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2661E002AC
	for <yocto@yoctoproject.org>; Tue, 18 Sep 2012 05:19:35 -0700 (PDT)
Received: by yenr9 with SMTP id r9so92866yen.35
	for <yocto@yoctoproject.org>; Tue, 18 Sep 2012 05:19:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=prN4/tkO+zIcfgNwlRdNe9X3rcBu/NYM5DjR05z125E=;
	b=mEOQQKvyTI+qcsDVspFYSFI2gNnEiksAJu39LwXQ6RKzGB+bJGYwzosKyjRyKW8ohd
	xOxpZtUq8bqRkghQQCe1Wh+SZyA7zX0ut5y+0XQ4mdYyhV0NPB5wiPNxSw+fVKEW8va8
	z3O+p3jyLgzrZjcn6c9fFo3pYtbrMKr6PgEUI/kF98eXwmm81yKmpAof1bGZgqbpTGoY
	e6KSXVi16iUUahHbwJRt0Q0QvLnR3cBOcj5fJy2Va27BrgCNicYWFceMaMXW1OO1FYYy
	TWhIpevX2Nrkpmqidao6Nm6XMSayQrEqztKAFAiPZCC8CGHpIJJNu9n2pE9u+qHbffsN
	qU/w==
Received: by 10.236.197.5 with SMTP id s5mr14494500yhn.114.1347970773088;
	Tue, 18 Sep 2012 05:19:33 -0700 (PDT)
Received: from [10.0.1.54] (nc-184-4-32-137.dhcp.embarqhsd.net. [184.4.32.137])
	by mx.google.com with ESMTPS id s17sm12061495anj.13.2012.09.18.05.19.26
	(version=SSLv3 cipher=OTHER); Tue, 18 Sep 2012 05:19:32 -0700 (PDT)
Message-ID: <505866C9.5000605@gmail.com>
Date: Tue, 18 Sep 2012 08:19:21 -0400
From: Jim Abernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:15.0) Gecko/20120827 Thunderbird/15.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: SATO video player app
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
X-List-Received-Date: Tue, 18 Sep 2012 12:19:36 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Now that the Denzil branch supports the CDV 1.0.3 hardware accelerated 
video driver for Cedartrail, I would like to have the Video Player app 
play the mp4 videos accelerated by the hardware. The player currently 
does not accelerate the video.  To play accelerated video, I need to run 
gst from the command line, for example:

gst-launch filesrc location=myvideofile.mp4 ! qtdemux name=demux ! queue 
! vaapidecode ! vaapisink demux. ! queue ! ffdec_aac ! alsasink.

Is there a way to configure the GUI video player to include the right 
pipeline options?

Jim A


