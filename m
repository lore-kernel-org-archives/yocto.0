Return-Path: <brian@walsh.ws>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D36CBE009D4; Tue, 22 May 2018 08:28:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.213.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f53.google.com (mail-vk0-f53.google.com
	[209.85.213.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1ACAEE00791
	for <yocto@yoctoproject.org>; Tue, 22 May 2018 08:28:25 -0700 (PDT)
Received: by mail-vk0-f53.google.com with SMTP id m144-v6so11167836vke.4
	for <yocto@yoctoproject.org>; Tue, 22 May 2018 08:28:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walsh.ws; s=google;
	h=mime-version:from:date:message-id:subject:to;
	bh=FHHAdW8UGy1ggPt15k5pK4xKxg3wuD1Dv+DMDRSLV90=;
	b=Dz3mzPN/YyZgr9opcRTnVXMG+wuszO8LGIImNwU0tFJ7L1BWCL20NCpvOyKGtuyIb9
	9iVoiR57/Ji5FR/zEt8+N61Xg5NazLgJIECcY4oBgi8vszzQXq0DrIQa31yNIrH+c16O
	/iK26JDFv7+7oH0+ytAgiZUu31UTcsA5CR41w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=FHHAdW8UGy1ggPt15k5pK4xKxg3wuD1Dv+DMDRSLV90=;
	b=bioILxI5gVjO2yf4wER6Jwjq0dXizEB4n+t4i2c2Vsft60JN4Sp9OTpa0OFDj6xBQk
	x5jG6vhiTYgG4byzhvu/3eYej06zSQT14H/zpLIR25nwVNatMtZrbPxQctytGZ0Uusru
	ChG1KXkDeXwbDQ5VMcjN/zNTj7olqSwuJaBp2XcwUNDOqLemg7u1N5BkoYFPItn6yTxe
	4g4Iv7kFCmOd2VrtmWLtusErhEWpFOamze0LHAz4u/EuX+5cbvVXYQMR7kbVjDnROIEv
	zy5mOMKVGicC9bTFtqCqaF/K2/Jz4P5uAzzlcxq4Inhb6MhbhNEt3fjOn8oFOyJX9OeN
	JpuA==
X-Gm-Message-State: ALKqPwe7CFgK2Es6ex9Mg/71yVcN2P+QVmWlDYMqL0FcFdk1TuiPSVWB
	E3zUZsbdpKN1aPtNUlL1JnLVy+cFn5yTSmbVDCj8jJFG304=
X-Google-Smtp-Source: AB8JxZrYaUPMf/NTYDp1yzF2Jf1ks13KbnlCrf5tw7dHufzYvx4Wyh1pevh9FTYSuWVwchLi6S0Vr8Jg/M/pSIvJOoA=
X-Received: by 2002:a1f:93c3:: with SMTP id
	v186-v6mr16211145vkd.67.1527002904513; 
	Tue, 22 May 2018 08:28:24 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab0:58ca:0:0:0:0:0 with HTTP; Tue, 22 May 2018 08:28:04
	-0700 (PDT)
From: Brian Walsh <brian@walsh.ws>
Date: Tue, 22 May 2018 11:28:04 -0400
Message-ID: <CAG0OLMaBuq05knexO=gnaQnDadhQsHdiZSFiYFRsFu4ZCsDj+Q@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: busybox / sysklogd post install conflict
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
X-List-Received-Date: Tue, 22 May 2018 15:28:26 -0000
Content-Type: multipart/alternative; boundary="000000000000b1f17f056ccd1149"

--000000000000b1f17f056ccd1149
Content-Type: text/plain; charset="UTF-8"

I have run into an issue building against sumo branch (using opkg if that
matters). This patch removed the update-alternatives for sysklogd.

https://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=c83eb10f70b714ce3a8c165fad547d800f3ed27d

However, busybox is still configured with syslog support. The script that
generates all of the symlinks for busybox runs during the main busybox
package post install. This causes the post install to exit with an error
since it can't create the links for klogd and syslogd if sysklogd is
installed without update alternatives.

From busybox.postinst:

update-alternatives --install /sbin/klogd klogd /bin/busybox.nosuid 50
update-alternatives --install /sbin/syslogd syslogd /bin/busybox.nosuid 50

I think that patch needs to be reverted. The rconflicts for busybox-syslog
and sysklogd takes care of the conflicting config file name that is shared
between the two packages but we still need the update-alternatives. Unless
the function that generates the busybox symlinks gets smart enough to
generate the symlinks only in the busybox-syslog package.

--000000000000b1f17f056ccd1149
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I have run into an issue building against sumo branch (usi=
ng opkg if that matters). This patch removed the update-alternatives for sy=
sklogd.<br><br><a href=3D"https://git.yoctoproject.org/cgit/cgit.cgi/poky/c=
ommit/?id=3Dc83eb10f70b714ce3a8c165fad547d800f3ed27d">https://git.yoctoproj=
ect.org/cgit/cgit.cgi/poky/commit/?id=3Dc83eb10f70b714ce3a8c165fad547d800f3=
ed27d</a><br><br>However, busybox is still configured with syslog support. =
The script that generates all of the symlinks for busybox runs during the m=
ain busybox package post install. This causes the post install to exit with=
 an error since it can&#39;t create the links for klogd and syslogd if sysk=
logd is installed without update alternatives.<br><br>From busybox.postinst=
:<br><br>update-alternatives --install /sbin/klogd klogd /bin/busybox.nosui=
d 50<br>update-alternatives --install /sbin/syslogd syslogd /bin/busybox.no=
suid 50<br><br>I think that patch needs to be reverted. The rconflicts for =
busybox-syslog and sysklogd takes care of the conflicting config file name =
that is shared between the two packages but we still need the update-altern=
atives. Unless the function that generates the busybox symlinks gets smart =
enough to generate the symlinks only in the busybox-syslog package.<br><div=
><br></div></div>

--000000000000b1f17f056ccd1149--
