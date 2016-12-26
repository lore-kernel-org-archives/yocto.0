Return-Path: <valentin.lebescond@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DE495E0052B; Mon, 26 Dec 2016 05:58:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (valentin.lebescond[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f48.google.com (mail-vk0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 55B1DE00519
	for <yocto@yoctoproject.org>; Mon, 26 Dec 2016 05:58:10 -0800 (PST)
Received: by mail-vk0-f48.google.com with SMTP id y197so52273985vky.2
	for <yocto@yoctoproject.org>; Mon, 26 Dec 2016 05:58:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=KxDkV2xQwRd0yKTGt7tB+mx/uEBTkz6x7qRWHe4iiCc=;
	b=cQqixCHIed9pQcvwhWEN3GHGTBJ9+xIvv7imujp5WUJpxvYOjhDWThdLPaPkCp4e/E
	hm8J1sA0GLKJBOBBhTRk2Rx3G/GikeSiAaLEqCdTs90RXsmazzczXkt2/oEaTL22jE5C
	GS7Ev35mR4rYFaU1NaDrIXFKzhSEmIFTRyrrKjIAWbV4KnSLayQrTw8A5NNOQxpJm/+Y
	d4r6dwUb/ii3VfmvdRn/daIm2nRKBejYTKPLpS93h9bB3MEOFFzvtjZ4a9xK2WhmBFbH
	epSmPUrhMoGV8XJWs2hOt1DsVVWUIQMuWlRaThZRRP8/GfoORnYvgaO57bN09TYH28RV
	03CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=KxDkV2xQwRd0yKTGt7tB+mx/uEBTkz6x7qRWHe4iiCc=;
	b=IiQQR69TvtK756aWAuQONu+Dww0oqkTNnoRUh7t7BDeikDjaRXI55Kf/P/vocvaIHA
	EsolfTDZm609HsxVIsubD8Myj4iZiSShv/wJ3WtNhi8LUL/Hfvqqs+AHbHJfCqAZe82I
	UDruHlt30F7prfoVffJ9yKvGEQFJh54XJhYmnZvPrIrL3sbrfU64fzHYFnEwJzoFJeS3
	tl5IZsOYXQMcsY+KCtsejtI3iqisDRzWlKCRq4+16r9ue9EHB0bSXJjBBPC5QGp5la8G
	GVWNVK+ymv8Rd6JO8J+ds+6Sxq2kTYC5peWDFCTmp7iqL+Puaw6FaITBXe/uTsO1+i5i
	VLjQ==
X-Gm-Message-State: AIkVDXKcVBpS2466rFcy+W9ckGVqW0TrHDW3ISVa5dEbl7IFmIefBve7PsEXpOLMOWeSKUW3Ou1kTHuWYC5WFw==
X-Received: by 10.31.167.77 with SMTP id q74mr10021888vke.135.1482760689866;
	Mon, 26 Dec 2016 05:58:09 -0800 (PST)
MIME-Version: 1.0
From: Valentin Le bescond <valentin.lebescond@gmail.com>
Date: Mon, 26 Dec 2016 13:57:59 +0000
Message-ID: <CAP2S6e4bBr092x5+pMnviic5Gdby8V8Ww8G9wUDgA0UF0xDb4g@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Toaster fail to clone meta-oe
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
X-List-Received-Date: Mon, 26 Dec 2016 13:58:14 -0000
Content-Type: multipart/alternative; boundary=001a114278ee34dd2305449020ac

--001a114278ee34dd2305449020ac
Content-Type: text/plain; charset=UTF-8

Hello,

After several successful builds with toaster I got an error
(UnicodeDecodeError: 'ascii' codec can't decode byte 0xc3 in position 226:
ordinal not in range(128)).

I cloned a brand new poky directory, set up toaster in a virtualenv, etc.
and am stuck with the same error.

It seems to happen while cloning meta-oe ... but it's not clear where it
comes from.

Do you have any clue that might help ?


2016-12-26 14:52:09,110 DEBUG runbuilds: starting build SonoMKR (Release
krogoth (krogoth), BBV krogoth (Branch: krogoth)) in progress, environment
BuildEnvironment object
2016-12-26 14:52:09,112 DEBUG localhostbecontroller, our git repos are
{(u'/home/valoo/yocto/layers/meta-sonomkr', u'master'): [(u'meta-sonomkr',
                                                          u'/')],
 (u'git://git.openembedded.org/meta-openembedded', u'krogoth'):
[(u'meta-oe',

u'meta-oe'),

(u'meta-python',

u'meta-python'),

(u'meta-networking',

u'meta-networking')],
 (u'git://git.yoctoproject.org/meta-raspberrypi', u'krogoth'):
[(u'meta-raspberrypi',
                                                                 u'')],
 (u'git://git.yoctoproject.org/meta-yocto', u'krogoth'): [(u'meta-poky',
                                                           u'meta-poky'),

(u'meta-yocto-bsp',

u'meta-yocto-bsp')],
 (u'git://git.yoctoproject.org/poky.git', u'krogoth'): [('bitbake',
                                                         u'bitbake'),

(u'openembedded-core',
                                                         u'meta')],
 (u'git://github.com/meta-qt5/meta-qt5.git', u'krogoth'): [(u'meta-qt5',
u'')]}
2016-12-26 14:52:09,112 DEBUG lbc_shellcmmd: (/home/valoo/yocto/poky21) git
remote -v
2016-12-26 14:52:09,117 DEBUG localhostbecontroller: shellcmd success
2016-12-26 14:52:09,117 INFO Using pre-checked out source for layer {'git://
git.yoctoproject.org/poky.git': u'/home/valoo/yocto/poky21'}
2016-12-26 14:52:09,117 DEBUG localhostbecontroller: giturl git://
github.com/meta-qt5/meta-qt5.git:krogoth checking out in current directory
/home/valoo/yocto/poky21/_toaster_clones/_git___github.com_meta-qt5_meta-qt5.git_krogoth
2016-12-26 14:52:09,117 DEBUG lbc_shellcmmd:
(/home/valoo/yocto/poky21/_toaster_clones/_git___github.com_meta-qt5_meta-qt5.git_krogoth)
git remote -v
2016-12-26 14:52:09,123 DEBUG localhostbecontroller: shellcmd success
2016-12-26 14:52:09,124 DEBUG localhostbecontroller: checking out commit
krogoth to
/home/valoo/yocto/poky21/_toaster_clones/_git___github.com_meta-qt5_meta-qt5.git_krogoth

2016-12-26 14:52:09,124 DEBUG lbc_shellcmmd:
(/home/valoo/yocto/poky21/_toaster_clones/_git___github.com_meta-qt5_meta-qt5.git_krogoth)
git fetch --all && git reset --hard "origin/krogoth"
2016-12-26 14:52:09,373 DEBUG localhostbecontroller: shellcmd success
2016-12-26 14:52:09,373 DEBUG localhostbecontroller: localdirpath expected
'/home/valoo/yocto/poky21/_toaster_clones/_git___github.com_meta-qt5_meta-qt5.git_krogoth/'
2016-12-26 14:52:09,373 DEBUG localhostbecontroller: giturl git://
git.yoctoproject.org/poky.git:krogoth checking out in current directory
/home/valoo/yocto/poky21/_toaster_clones/_git___git.yoctoproject.org_poky.git_krogoth
2016-12-26 14:52:09,373 DEBUG lbc_shellcmmd:
(/home/valoo/yocto/poky21/_toaster_clones/_git___git.yoctoproject.org_poky.git_krogoth)
git remote -v
2016-12-26 14:52:09,377 DEBUG localhostbecontroller: shellcmd success
2016-12-26 14:52:09,378 DEBUG localhostbecontroller: checking out commit
krogoth to
/home/valoo/yocto/poky21/_toaster_clones/_git___git.yoctoproject.org_poky.git_krogoth

2016-12-26 14:52:09,378 DEBUG lbc_shellcmmd:
(/home/valoo/yocto/poky21/_toaster_clones/_git___git.yoctoproject.org_poky.git_krogoth)
git fetch --all && git reset --hard "origin/krogoth"
2016-12-26 14:52:10,137 DEBUG localhostbecontroller: shellcmd success
2016-12-26 14:52:10,137 DEBUG localhostbecontroller: selected poky dir name
/home/valoo/yocto/poky21/_toaster_clones/_git___git.yoctoproject.org_poky.git_krogoth
2016-12-26 14:52:10,137 DEBUG localhostbecontroller: localdirpath expected
'/home/valoo/yocto/poky21/_toaster_clones/_git___git.yoctoproject.org_poky.git_krogoth/bitbake'
2016-12-26 14:52:10,137 DEBUG localhostbecontroller: localdirpath expected
'/home/valoo/yocto/poky21/_toaster_clones/_git___git.yoctoproject.org_poky.git_krogoth/meta'
2016-12-26 14:52:10,138 DEBUG localhostbecontroller: giturl git://
git.yoctoproject.org/meta-raspberrypi:krogoth checking out in current
directory
/home/valoo/yocto/poky21/_toaster_clones/_git___git.yoctoproject.org_meta-raspberrypi_krogoth
2016-12-26 14:52:10,138 DEBUG lbc_shellcmmd:
(/home/valoo/yocto/poky21/_toaster_clones/_git___git.yoctoproject.org_meta-raspberrypi_krogoth)
git remote -v
2016-12-26 14:52:10,142 DEBUG localhostbecontroller: shellcmd success
2016-12-26 14:52:10,142 DEBUG localhostbecontroller: checking out commit
krogoth to
/home/valoo/yocto/poky21/_toaster_clones/_git___git.yoctoproject.org_meta-raspberrypi_krogoth

2016-12-26 14:52:10,143 DEBUG lbc_shellcmmd:
(/home/valoo/yocto/poky21/_toaster_clones/_git___git.yoctoproject.org_meta-raspberrypi_krogoth)
git fetch --all && git reset --hard "origin/krogoth"
2016-12-26 14:52:10,677 DEBUG localhostbecontroller: shellcmd success
2016-12-26 14:52:10,678 DEBUG localhostbecontroller: localdirpath expected
'/home/valoo/yocto/poky21/_toaster_clones/_git___git.yoctoproject.org_meta-raspberrypi_krogoth/'
2016-12-26 14:52:10,678 DEBUG localhostbecontroller: giturl git://
git.yoctoproject.org/meta-yocto:krogoth checking out in current directory
/home/valoo/yocto/poky21/_toaster_clones/_git___git.yoctoproject.org_meta-yocto_krogoth
2016-12-26 14:52:10,678 DEBUG lbc_shellcmmd:
(/home/valoo/yocto/poky21/_toaster_clones/_git___git.yoctoproject.org_meta-yocto_krogoth)
git remote -v
2016-12-26 14:52:10,682 DEBUG localhostbecontroller: shellcmd success
2016-12-26 14:52:10,682 DEBUG localhostbecontroller: checking out commit
krogoth to
/home/valoo/yocto/poky21/_toaster_clones/_git___git.yoctoproject.org_meta-yocto_krogoth

2016-12-26 14:52:10,682 DEBUG lbc_shellcmmd:
(/home/valoo/yocto/poky21/_toaster_clones/_git___git.yoctoproject.org_meta-yocto_krogoth)
git fetch --all && git reset --hard "origin/krogoth"
2016-12-26 14:52:11,273 DEBUG localhostbecontroller: shellcmd success
2016-12-26 14:52:11,274 DEBUG localhostbecontroller: localdirpath expected
'/home/valoo/yocto/poky21/_toaster_clones/_git___git.yoctoproject.org_meta-yocto_krogoth/meta-poky'
2016-12-26 14:52:11,274 DEBUG localhostbecontroller: localdirpath expected
'/home/valoo/yocto/poky21/_toaster_clones/_git___git.yoctoproject.org_meta-yocto_krogoth/meta-yocto-bsp'
2016-12-26 14:52:11,275 DEBUG localhostbecontroller: giturl git://
git.openembedded.org/meta-openembedded:krogoth checking out in current
directory
/home/valoo/yocto/poky21/_toaster_clones/_git___git.openembedded.org_meta-openembedded_krogoth
2016-12-26 14:52:11,275 DEBUG localhostbecontroller: cloning git://
git.openembedded.org/meta-openembedded in
/home/valoo/yocto/poky21/_toaster_clones/_git___git.openembedded.org_meta-openembedded_krogoth
2016-12-26 14:52:11,275 DEBUG lbc_shellcmmd: (/home/valoo/yocto/poky21) git
clone "git://git.openembedded.org/meta-openembedded"
"/home/valoo/yocto/poky21/_toaster_clones/_git___git.openembedded.org_meta-openembedded_krogoth"
2016-12-26 14:52:11,427 ERROR runbuilds: Error launching build 'ascii'
codec can't decode byte 0xc3 in position 226: ordinal not in range(128)
Traceback (most recent call last):
  File
"/home/valoo/yocto/poky21/bitbake/lib/toaster/bldcontrol/management/commands/runbuilds.py",
line 67, in schedule
    "%d:%d" % (br.pk, bec.be.pk))
  File
"/home/valoo/yocto/poky21/bitbake/lib/toaster/bldcontrol/localhostbecontroller.py",
line 255, in triggerBuild
    layers = self.setLayers(bitbake, layers, targets)
  File
"/home/valoo/yocto/poky21/bitbake/lib/toaster/bldcontrol/localhostbecontroller.py",
line 155, in setLayers
    self._shellcmd('git clone "%s" "%s"' % (giturl, localdirname))
  File
"/home/valoo/yocto/poky21/bitbake/lib/toaster/bldcontrol/localhostbecontroller.py",
line 68, in _shellcmd
    err = "command: %s \n%s" % (command, err)
UnicodeDecodeError: 'ascii' codec can't decode byte 0xc3 in position 226:
ordinal not in range(128)
2016-12-26 14:52:12,445 DEBUG Saving error 'ascii' codec can't decode byte
0xc3 in position 226: ordinal not in range(128) (SonoMKR (Release krogoth
(krogoth), BBV krogoth (Branch: krogoth)) failed)

--001a114278ee34dd2305449020ac
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_msg">Hello,<br><br></div><div class=3D=
"gmail_msg">After several successful builds with toaster I got an error (Un=
icodeDecodeError: &#39;ascii&#39; codec can&#39;t decode byte 0xc3 in posit=
ion 226: ordinal not in range(128)).<br><br></div><div class=3D"gmail_msg">=
I cloned a brand new poky directory, set up toaster in a virtualenv, etc. a=
nd am stuck with the same error.<br><br></div><div class=3D"gmail_msg">It s=
eems to happen while cloning meta-oe ... but it&#39;s not clear where it co=
mes from.<br><br></div><div class=3D"gmail_msg">Do you have any clue that m=
ight help ?<br></div><div class=3D"gmail_msg"><br></div><div dir=3D"ltr" cl=
ass=3D"gmail_msg"><br>2016-12-26 14:52:09,110 DEBUG runbuilds: starting bui=
ld SonoMKR (Release krogoth (krogoth), BBV krogoth (Branch: krogoth)) in pr=
ogress, environment BuildEnvironment object<br>2016-12-26 14:52:09,112 DEBU=
G localhostbecontroller, our git repos are {(u&#39;/home/valoo/yocto/layers=
/meta-sonomkr&#39;, u&#39;master&#39;): [(u&#39;meta-sonomkr&#39;,<br>=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 u&#39;/&#39;)],<br>=C2=A0(u&#39;git=
://<a href=3D"http://git.openembedded.org/meta-openembedded">git.openembedd=
ed.org/meta-openembedded</a>&#39;, u&#39;krogoth&#39;): [(u&#39;meta-oe&#39=
;,<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 u&#39;meta-oe&#39;),<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 (u&#39;meta-pytho=
n&#39;,<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 u&#39;meta-python&#39;),<br>=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 (u&#39;m=
eta-networking&#39;,<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 u&#39;meta-networking&#39;)],<br>=
=C2=A0(u&#39;git://<a href=3D"http://git.yoctoproject.org/meta-raspberrypi"=
>git.yoctoproject.org/meta-raspberrypi</a>&#39;, u&#39;krogoth&#39;): [(u&#=
39;meta-raspberrypi&#39;,<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 u&#39;&#39;)],<br>=C2=A0(u&#39;git:=
//<a href=3D"http://git.yoctoproject.org/meta-yocto">git.yoctoproject.org/m=
eta-yocto</a>&#39;, u&#39;krogoth&#39;): [(u&#39;meta-poky&#39;,<br>=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 u&#39;meta-poky&#39;),<br>=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 (u&#39;meta-yocto-bsp&#39;,<br>=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 u&#39;meta-yocto-bsp&#39;)],<br>=
=C2=A0(u&#39;git://<a href=3D"http://git.yoctoproject.org/poky.git">git.yoc=
toproject.org/poky.git</a>&#39;, u&#39;krogoth&#39;): [(&#39;bitbake&#39;,<=
br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 u&#39;bitbake&#39;),<br>=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 (u&#39;openembedded-core&#39;,<br>=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 u&#39;meta&#39;)],<br>=C2=A0(u&#39;git://<a href=3D"http=
://github.com/meta-qt5/meta-qt5.git">github.com/meta-qt5/meta-qt5.git</a>&#=
39;, u&#39;krogoth&#39;): [(u&#39;meta-qt5&#39;, u&#39;&#39;)]}<br>2016-12-=
26 14:52:09,112 DEBUG lbc_shellcmmd: (/home/valoo/yocto/poky21) git remote =
-v<br>2016-12-26 14:52:09,117 DEBUG localhostbecontroller: shellcmd success=
<br>2016-12-26 14:52:09,117 INFO Using pre-checked out source for layer {&#=
39;git://<a href=3D"http://git.yoctoproject.org/poky.git">git.yoctoproject.=
org/poky.git</a>&#39;: u&#39;/home/valoo/yocto/poky21&#39;}<br>2016-12-26 1=
4:52:09,117 DEBUG localhostbecontroller: giturl git://<a href=3D"http://git=
hub.com/meta-qt5/meta-qt5.git:krogoth">github.com/meta-qt5/meta-qt5.git:kro=
goth</a> checking out in current directory /home/valoo/yocto/poky21/_toaste=
r_clones/_git___github.com_meta-qt5_meta-qt5.git_krogoth<br>2016-12-26 14:5=
2:09,117 DEBUG lbc_shellcmmd: (/home/valoo/yocto/poky21/_toaster_clones/_gi=
t___github.com_meta-qt5_meta-qt5.git_krogoth) git remote -v<br>2016-12-26 1=
4:52:09,123 DEBUG localhostbecontroller: shellcmd success<br>2016-12-26 14:=
52:09,124 DEBUG localhostbecontroller: checking out commit krogoth to /home=
/valoo/yocto/poky21/_toaster_clones/_git___github.com_meta-qt5_meta-qt5.git=
_krogoth <br>2016-12-26 14:52:09,124 DEBUG lbc_shellcmmd: (/home/valoo/yoct=
o/poky21/_toaster_clones/_git___github.com_meta-qt5_meta-qt5.git_krogoth) g=
it fetch --all &amp;&amp; git reset --hard &quot;origin/krogoth&quot;<br>20=
16-12-26 14:52:09,373 DEBUG localhostbecontroller: shellcmd success<br>2016=
-12-26 14:52:09,373 DEBUG localhostbecontroller: localdirpath expected &#39=
;/home/valoo/yocto/poky21/_toaster_clones/_git___github.com_meta-qt5_meta-q=
t5.git_krogoth/&#39;<br>2016-12-26 14:52:09,373 DEBUG localhostbecontroller=
: giturl git://<a href=3D"http://git.yoctoproject.org/poky.git:krogoth">git=
.yoctoproject.org/poky.git:krogoth</a> checking out in current directory /h=
ome/valoo/yocto/poky21/_toaster_clones/_git___git.yoctoproject.org_poky.git=
_krogoth<br>2016-12-26 14:52:09,373 DEBUG lbc_shellcmmd: (/home/valoo/yocto=
/poky21/_toaster_clones/_git___git.yoctoproject.org_poky.git_krogoth) git r=
emote -v<br>2016-12-26 14:52:09,377 DEBUG localhostbecontroller: shellcmd s=
uccess<br>2016-12-26 14:52:09,378 DEBUG localhostbecontroller: checking out=
 commit krogoth to /home/valoo/yocto/poky21/_toaster_clones/_git___git.yoct=
oproject.org_poky.git_krogoth <br>2016-12-26 14:52:09,378 DEBUG lbc_shellcm=
md: (/home/valoo/yocto/poky21/_toaster_clones/_git___git.yoctoproject.org_p=
oky.git_krogoth) git fetch --all &amp;&amp; git reset --hard &quot;origin/k=
rogoth&quot;<br>2016-12-26 14:52:10,137 DEBUG localhostbecontroller: shellc=
md success<br>2016-12-26 14:52:10,137 DEBUG localhostbecontroller: selected=
 poky dir name /home/valoo/yocto/poky21/_toaster_clones/_git___git.yoctopro=
ject.org_poky.git_krogoth<br>2016-12-26 14:52:10,137 DEBUG localhostbecontr=
oller: localdirpath expected &#39;/home/valoo/yocto/poky21/_toaster_clones/=
_git___git.yoctoproject.org_poky.git_krogoth/bitbake&#39;<br>2016-12-26 14:=
52:10,137 DEBUG localhostbecontroller: localdirpath expected &#39;/home/val=
oo/yocto/poky21/_toaster_clones/_git___git.yoctoproject.org_poky.git_krogot=
h/meta&#39;<br>2016-12-26 14:52:10,138 DEBUG localhostbecontroller: giturl =
git://<a href=3D"http://git.yoctoproject.org/meta-raspberrypi:krogoth">git.=
yoctoproject.org/meta-raspberrypi:krogoth</a> checking out in current direc=
tory /home/valoo/yocto/poky21/_toaster_clones/_git___git.yoctoproject.org_m=
eta-raspberrypi_krogoth<br>2016-12-26 14:52:10,138 DEBUG lbc_shellcmmd: (/h=
ome/valoo/yocto/poky21/_toaster_clones/_git___git.yoctoproject.org_meta-ras=
pberrypi_krogoth) git remote -v<br>2016-12-26 14:52:10,142 DEBUG localhostb=
econtroller: shellcmd success<br>2016-12-26 14:52:10,142 DEBUG localhostbec=
ontroller: checking out commit krogoth to /home/valoo/yocto/poky21/_toaster=
_clones/_git___git.yoctoproject.org_meta-raspberrypi_krogoth <br>2016-12-26=
 14:52:10,143 DEBUG lbc_shellcmmd: (/home/valoo/yocto/poky21/_toaster_clone=
s/_git___git.yoctoproject.org_meta-raspberrypi_krogoth) git fetch --all &am=
p;&amp; git reset --hard &quot;origin/krogoth&quot;<br>2016-12-26 14:52:10,=
677 DEBUG localhostbecontroller: shellcmd success<br>2016-12-26 14:52:10,67=
8 DEBUG localhostbecontroller: localdirpath expected &#39;/home/valoo/yocto=
/poky21/_toaster_clones/_git___git.yoctoproject.org_meta-raspberrypi_krogot=
h/&#39;<br>2016-12-26 14:52:10,678 DEBUG localhostbecontroller: giturl git:=
//<a href=3D"http://git.yoctoproject.org/meta-yocto:krogoth">git.yoctoproje=
ct.org/meta-yocto:krogoth</a> checking out in current directory /home/valoo=
/yocto/poky21/_toaster_clones/_git___git.yoctoproject.org_meta-yocto_krogot=
h<br>2016-12-26 14:52:10,678 DEBUG lbc_shellcmmd: (/home/valoo/yocto/poky21=
/_toaster_clones/_git___git.yoctoproject.org_meta-yocto_krogoth) git remote=
 -v<br>2016-12-26 14:52:10,682 DEBUG localhostbecontroller: shellcmd succes=
s<br>2016-12-26 14:52:10,682 DEBUG localhostbecontroller: checking out comm=
it krogoth to /home/valoo/yocto/poky21/_toaster_clones/_git___git.yoctoproj=
ect.org_meta-yocto_krogoth <br>2016-12-26 14:52:10,682 DEBUG lbc_shellcmmd:=
 (/home/valoo/yocto/poky21/_toaster_clones/_git___git.yoctoproject.org_meta=
-yocto_krogoth) git fetch --all &amp;&amp; git reset --hard &quot;origin/kr=
ogoth&quot;<br>2016-12-26 14:52:11,273 DEBUG localhostbecontroller: shellcm=
d success<br>2016-12-26 14:52:11,274 DEBUG localhostbecontroller: localdirp=
ath expected &#39;/home/valoo/yocto/poky21/_toaster_clones/_git___git.yocto=
project.org_meta-yocto_krogoth/meta-poky&#39;<br>2016-12-26 14:52:11,274 DE=
BUG localhostbecontroller: localdirpath expected &#39;/home/valoo/yocto/pok=
y21/_toaster_clones/_git___git.yoctoproject.org_meta-yocto_krogoth/meta-yoc=
to-bsp&#39;<br>2016-12-26 14:52:11,275 DEBUG localhostbecontroller: giturl =
git://<a href=3D"http://git.openembedded.org/meta-openembedded:krogoth">git=
.openembedded.org/meta-openembedded:krogoth</a> checking out in current dir=
ectory /home/valoo/yocto/poky21/_toaster_clones/_git___git.openembedded.org=
_meta-openembedded_krogoth<br>2016-12-26 14:52:11,275 DEBUG localhostbecont=
roller: cloning git://<a href=3D"http://git.openembedded.org/meta-openembed=
ded">git.openembedded.org/meta-openembedded</a> in /home/valoo/yocto/poky21=
/_toaster_clones/_git___git.openembedded.org_meta-openembedded_krogoth<br>2=
016-12-26 14:52:11,275 DEBUG lbc_shellcmmd: (/home/valoo/yocto/poky21) git =
clone &quot;git://<a href=3D"http://git.openembedded.org/meta-openembedded"=
>git.openembedded.org/meta-openembedded</a>&quot; &quot;/home/valoo/yocto/p=
oky21/_toaster_clones/_git___git.openembedded.org_meta-openembedded_krogoth=
&quot;<br>2016-12-26 14:52:11,427 ERROR runbuilds: Error launching build &#=
39;ascii&#39; codec can&#39;t decode byte 0xc3 in position 226: ordinal not=
 in range(128)<br>Traceback (most recent call last):<br>=C2=A0 File &quot;/=
home/valoo/yocto/poky21/bitbake/lib/toaster/bldcontrol/management/commands/=
runbuilds.py&quot;, line 67, in schedule<br>=C2=A0=C2=A0=C2=A0 &quot;%d:%d&=
quot; % (<a href=3D"http://br.pk">br.pk</a>, <a href=3D"http://bec.be.pk">b=
ec.be.pk</a>))<br>=C2=A0 File &quot;/home/valoo/yocto/poky21/bitbake/lib/to=
aster/bldcontrol/localhostbecontroller.py&quot;, line 255, in triggerBuild<=
br>=C2=A0=C2=A0=C2=A0 layers =3D self.setLayers(bitbake, layers, targets)<b=
r>=C2=A0 File &quot;/home/valoo/yocto/poky21/bitbake/lib/toaster/bldcontrol=
/localhostbecontroller.py&quot;, line 155, in setLayers<br>=C2=A0=C2=A0=C2=
=A0 self._shellcmd(&#39;git clone &quot;%s&quot; &quot;%s&quot;&#39; % (git=
url, localdirname))<br>=C2=A0 File &quot;/home/valoo/yocto/poky21/bitbake/l=
ib/toaster/bldcontrol/localhostbecontroller.py&quot;, line 68, in _shellcmd=
<br>=C2=A0=C2=A0=C2=A0 err =3D &quot;command: %s \n%s&quot; % (command, err=
)<br>UnicodeDecodeError: &#39;ascii&#39; codec can&#39;t decode byte 0xc3 i=
n position 226: ordinal not in range(128)<br>2016-12-26 14:52:12,445 DEBUG =
Saving error &#39;ascii&#39; codec can&#39;t decode byte 0xc3 in position 2=
26: ordinal not in range(128) (SonoMKR (Release krogoth (krogoth), BBV krog=
oth (Branch: krogoth)) failed)<br><br><br></div></div>

--001a114278ee34dd2305449020ac--
