Return-Path: <simon.chamlian@mpbc.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EC674E00C77; Mon, 23 Jul 2018 13:29:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.220.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f181.google.com (mail-qk0-f181.google.com
	[209.85.220.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 98E5CE00A04
	for <yocto@yoctoproject.org>; Mon, 23 Jul 2018 13:29:05 -0700 (PDT)
Received: by mail-qk0-f181.google.com with SMTP id c126-v6so1281158qkd.7
	for <yocto@yoctoproject.org>; Mon, 23 Jul 2018 13:29:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mpbc-ca.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=nJnE+zAOE3Ltn1HijmEVjKKy6p9JThjaZVEkd1vqwUo=;
	b=PPt8N+8RwWhvCNXi1nuFacbuA02Rvm9qEZ9uUPzwgDoNRqLqEn+vId3J8pux4xtMm4
	MSjef5M+LN347FAm4RaG32LPwyzh2Yto/J8K1Jtx4C1bPrqTyN2WjYbouDo6AvKZao5m
	yAOuhId7CKS1Ly6xsQTYQJxQ9kRYRCxQCEdr6Biyo9fGP75hCmSUYYou+XiR6xpLoHPx
	9o6F/lmN1lWmBiR6b3XuSsPmybiuKHW9qL0H4BS1YNAdeLhXSdIG6YdK2ACSIUnygTpQ
	MAncaYkrJ+tc9xGvwY8yeV1gl8UuRiqNq6BU3LxkBKt2ztBBhh26SSr7jjhLRUYiC1vV
	pTsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=nJnE+zAOE3Ltn1HijmEVjKKy6p9JThjaZVEkd1vqwUo=;
	b=QsVOu23pI7klxtIAQ7uJOHbX2bzhkofQQCmyITCsm2EG39leiz9IECsy31f4gTNquB
	L/Go4D/lVv35JlT0YOXertDh5BUF9zHh+lMIGixZRdwchdcOI5n5I+3ZDRF1D6VbJ/2+
	dlmXptdsMb1+UQeNFqCnuwGUVtYv7Ej5r851CftSJ8xG9ME4HBF47SWJPuMQu7YtUAot
	3tLvqHVhblT6mixn4ef0X/HIgaTi7qdXKcjv7cXmZSRd76PkScwHC+vRqADsK4uiyTIv
	LPnqCTmG+RJ52/yt3+0w1n8bhYGYnvlqF5aKEN+EbicJ9W8Yuh1KJdNIJq+9Ak4iFHVt
	0S2A==
X-Gm-Message-State: AOUpUlEY1pO5wT8Wcaz1sF2Lebbjy30Mf3vVWijxVHkxCCCyxw+B4HS3
	9YHp69bRcCkWufWQLrrTj0Dc+igQYVX4kjXt/7WHEWJtpqEHTA==
X-Google-Smtp-Source: AAOMgpc0oP/X+QqXnu9CPjR3KDMp4BCiP0yjKnHSlU+hKobmWB1ikalCgcVUA6gxPmjQ5BQzT738Jfi3NwvyeFlBjPA=
X-Received: by 2002:a37:6301:: with SMTP id
	x1-v6mr12750453qkb.403.1532377744573; 
	Mon, 23 Jul 2018 13:29:04 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac8:856:0:0:0:0:0 with HTTP;
	Mon, 23 Jul 2018 13:29:04 -0700 (PDT)
From: Simon Chamlian <simon.chamlian@mpbc.ca>
Date: Mon, 23 Jul 2018 16:29:04 -0400
Message-ID: <CANmTPBZ7neRETjpdKtC+2MpPuhtKegeQQEPY_1=SSDJzmUbWBA@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: To remove packages from busybox
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
X-List-Received-Date: Mon, 23 Jul 2018 20:29:07 -0000
Content-Type: multipart/alternative; boundary="0000000000002098cd0571b07f2b"

--0000000000002098cd0571b07f2b
Content-Type: text/plain; charset="UTF-8"

Hi,

In order to remove package from busybox, I used:

$ bitbake  -c menuconfig busybox

Under 'System Logging Itilities -->' I unchecked *syslogd*

Then ran
$ bitbake   busybox

and I get the following error:

WARNING: busybox-1.24.1-r0 do_package: busybox: alternative target
(/etc/syslog.conf or /etc/syslog.conf.busybox) does not exist, skipping...
WARNING: busybox-1.24.1-r0 do_package: busybox: NOT adding alternative
provide /etc/syslog.conf: /etc/syslog.conf.busybox does not exist

ERROR: busybox-1.24.1-r0 do_package: SYSTEMD_SERVICE_busybox-syslog value
busybox-syslog.service does not exist


ERROR: busybox-1.24.1-r0 do_package: Function failed:
systemd_populate_packages


ERROR: Logfile of failure stored in:
/opt/PHYTEC_BSPs/yocto_imx7/build/tmp/work/cortexa7hf-neon-poky-linux-gnueabi/busybox/1.24.1-r0/temp/log.do_package.30881

ERROR: Task
(/opt/PHYTEC_BSPs/yocto_imx7/sources/poky/meta/recipes-core/busybox/busybox_1.24.1.bb:do_package)
failed with exit code '1'

NOTE: Tasks Summary: Attempted 711 tasks of which 705 didn't need to be
rerun and 1 failed.



What am I doing wrong?

Thanks,
S

--0000000000002098cd0571b07f2b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>In order to remove packa=
ge from busybox, I used:</div><div><br></div><div style=3D"margin-left:40px=
"><span style=3D"font-family:monospace,monospace">$ bitbake=C2=A0 -c menuco=
nfig busybox</span></div><div><br></div><div>Under &#39;<span style=3D"font=
-family:monospace,monospace">System Logging Itilities --&gt;</span>&#39; I =
unchecked <b><span style=3D"font-family:monospace,monospace">syslogd</span>=
</b><br></div><div><br></div><div>Then ran<br></div><div style=3D"margin-le=
ft:40px"><span style=3D"font-family:monospace,monospace">$ bitbake=C2=A0=C2=
=A0 busybox</span><br></div><div><br></div><div>and I get the following err=
or:</div><div><br></div><div><span style=3D"font-family:monospace,monospace=
">WARNING: busybox-1.24.1-r0 do_package: busybox: alternative target (/etc/=
syslog.conf or /etc/syslog.conf.busybox) does not exist, skipping...<br></s=
pan></div><div><span style=3D"font-family:monospace,monospace"></span></div=
><div><span style=3D"font-family:monospace,monospace">WARNING: busybox-1.24=
.1-r0 do_package: busybox: NOT adding alternative provide /etc/syslog.conf:=
 /etc/syslog.conf.busybox does not exist<br></span></div><div><span style=
=3D"font-family:monospace,monospace"><br></span></div><div><span style=3D"f=
ont-family:monospace,monospace">ERROR: busybox-1.24.1-r0 do_package: SYSTEM=
D_SERVICE_busybox-syslog value busybox-syslog.service does not exist<br></s=
pan></div><div><span style=3D"font-family:monospace,monospace"></span></div=
><div><span style=3D"font-family:monospace,monospace"></span></div><div><sp=
an style=3D"font-family:monospace,monospace"><br></span></div><div><span st=
yle=3D"font-family:monospace,monospace"><br></span></div><div><span style=
=3D"font-family:monospace,monospace">ERROR: busybox-1.24.1-r0 do_package: F=
unction failed: systemd_populate_packages<br></span></div><div><span style=
=3D"font-family:monospace,monospace"></span><br></div><div><br></div><div><=
span style=3D"font-family:monospace,monospace"></span></div><div><span styl=
e=3D"font-family:monospace,monospace"></span></div><div><span style=3D"font=
-family:monospace,monospace">ERROR: Logfile of failure stored in: /opt/PHYT=
EC_BSPs/yocto_imx7/build/tmp/work/cortexa7hf-neon-poky-linux-gnueabi/busybo=
x/1.24.1-r0/temp/log.do_package.30881<br></span></div><div><span style=3D"f=
ont-family:monospace,monospace"><br></span></div><div><span style=3D"font-f=
amily:monospace,monospace"></span></div><div><span style=3D"font-family:mon=
ospace,monospace"></span></div><div><span style=3D"font-family:monospace,mo=
nospace">ERROR: Task (/opt/PHYTEC_BSPs/yocto_imx7/sources/poky/meta/recipes=
-core/busybox/busybox_1.24.1.bb:do_package) failed with exit code &#39;1&#3=
9;<br></span></div><div><span style=3D"font-family:monospace,monospace"><br=
></span></div><div><span style=3D"font-family:monospace,monospace"></span><=
/div><div><span style=3D"font-family:monospace,monospace"></span></div><div=
><span style=3D"font-family:monospace,monospace"></span></div><div><span st=
yle=3D"font-family:monospace,monospace"></span></div><div><span style=3D"fo=
nt-family:monospace,monospace">NOTE: Tasks Summary: Attempted 711 tasks of =
which 705 didn&#39;t need to be rerun and 1 failed.<br></span></div><div><s=
pan style=3D"font-family:monospace,monospace"><br></span></div><div><span s=
tyle=3D"font-family:monospace,monospace"><br></span></div><div><br></div><d=
iv>What am I doing wrong?</div><div><br></div><div>Thanks,</div><div>S</div=
><div><br></div><div><br></div><br></div>

--0000000000002098cd0571b07f2b--
