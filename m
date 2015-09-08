Return-Path: <pervivek@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 81258E00D12; Tue,  8 Sep 2015 05:10:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pervivek[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.160.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yk0-f169.google.com (mail-yk0-f169.google.com
	[209.85.160.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7827BE00AF0
	for <yocto@yoctoproject.org>; Tue,  8 Sep 2015 05:10:55 -0700 (PDT)
Received: by ykdu9 with SMTP id u9so39024281ykd.2
	for <yocto@yoctoproject.org>; Tue, 08 Sep 2015 05:10:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=awpRJRRwSE898j9R+mbPXAaHbevuYQvtv7R2yvd76qY=;
	b=YO4vmpuAcKOi0P7MM4Jx20WACenE/mWjz9XKA/xwHH/C09MjgiTx+XyxE6jdUv8uB0
	oT1gyZwSO1ebDLmDgZ5IGFVP9emnnDYx7HuAdFGs6I+u7vbxicvyqedYEBsL8wd4iD/2
	++u8s+1BzS7iAJGASspdnY+u/0TchLJA31RYdnquly3YBTO1hNEIud76DQjxHmd/M/f4
	Q85XpBACeDU8TYsFMCfOaEuALd9gE9DsJx1S2YR3St7EioEUnWlB1ykwfeVV8tA5xZqH
	bw1P2DreUIE/WQz6mBn4S/XO3R0Ppxmqfs9Nn/VIKuc1tb8rkTv1Jb6sKYQ0RQqXUfPI
	7ilQ==
MIME-Version: 1.0
X-Received: by 10.170.60.5 with SMTP id c5mr27270653ykc.109.1441714255327;
	Tue, 08 Sep 2015 05:10:55 -0700 (PDT)
Received: by 10.31.179.12 with HTTP; Tue, 8 Sep 2015 05:10:55 -0700 (PDT)
Date: Tue, 8 Sep 2015 17:40:55 +0530
Message-ID: <CALLyC8S3eegCzqCiZk3+e0H2fdrLoJZbxkG6=jis7E45L4DMvQ@mail.gmail.com>
From: Vivek Per <pervivek@gmail.com>
To: yocto@yoctoproject.org
Subject: do_unpack task getting failed when tar files are added to download directory manually
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
X-List-Received-Date: Tue, 08 Sep 2015 12:10:57 -0000
Content-Type: multipart/alternative; boundary=001a113917500e79ae051f3b42f2

--001a113917500e79ae051f3b42f2
Content-Type: text/plain; charset=UTF-8

Hi,
    I want to build vlan_1.9.bb (open-embedded recipe) in my system . I
downloaded vlan_1.9.orig.tar.gz tarball manually (same version specified in
recipe) and placed in download (DL_DIR) directory and created an empty
vlan_1.9.orig.tar.gz.done in download directory and try to *bitbake vlan*.
It is giving error while do_unpack task and vlan_1.9.orig.tar.gz.lock file
is getting created in download directory(DL_DIR). I can able to build other
yocto recipes normally like this but i am facing problem with open-embedded
recipes only .I have added open-embedded path in bblayers.conf file. Can
any one please tell me how can i make this file get included from download
directory.

Thanks and Regards
          Vivek

--001a113917500e79ae051f3b42f2
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,=C2=A0<div>=C2=A0 =C2=A0=C2=A0<span style=3D"font-famil=
y:&#39;Helvetica Neue&#39;,Helvetica,Arial,sans-serif;font-size:15px;line-h=
eight:19.5px">I want to build <a href=3D"http://vlan_1.9.bb">vlan_1.9.bb</a=
> (open-embedded recipe) in my system . I downloaded vlan_1.9.orig.tar.gz t=
arball manually (same version specified in recipe) and placed in download (=
DL_DIR) directory and created an empty vlan_1.9.orig.tar.gz.done in downloa=
d directory and try to=C2=A0</span><strong style=3D"margin:0px;padding:0px;=
border:0px;font-size:15px;font-family:&#39;Helvetica Neue&#39;,Helvetica,Ar=
ial,sans-serif;line-height:19.5px">bitbake vlan</strong><font face=3D"Helve=
tica Neue, Helvetica, Arial, sans-serif"><span style=3D"font-size:15px;line=
-height:19.5px">. It is giving error while do_unpack task and vlan_1.9.orig=
.tar.gz.lock file is getting created in download directory(DL_DIR). I can a=
ble to build other yocto recipes normally like this but i am facing problem=
 with open-embedded recipes only .I have added=C2=A0open-embedded=C2=A0path=
 in bblayers.conf file. Can any one please=C2=A0tell me how can i make this=
 file get included from download directory.</span></font><br></div><div><sp=
an style=3D"font-family:&#39;Helvetica Neue&#39;,Helvetica,Arial,sans-serif=
;font-size:15px;line-height:19.5px"><br></span></div><div><span style=3D"fo=
nt-family:&#39;Helvetica Neue&#39;,Helvetica,Arial,sans-serif;font-size:15p=
x;line-height:19.5px">Thanks and Regards</span></div><div><span style=3D"fo=
nt-family:&#39;Helvetica Neue&#39;,Helvetica,Arial,sans-serif;font-size:15p=
x;line-height:19.5px">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Vivek</span></div>=
</div>

--001a113917500e79ae051f3b42f2--
