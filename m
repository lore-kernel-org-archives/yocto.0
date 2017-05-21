Return-Path: <bluehills7@comcast.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7F9A4E00968; Sun, 21 May 2017 16:44:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bluehills7[at]comcast.net)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [69.252.207.34 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 60 seconds by postgrey-1.32 at yocto-www;
	Sun, 21 May 2017 16:44:08 PDT
Received: from resqmta-ch2-02v.sys.comcast.net
	(resqmta-ch2-02v.sys.comcast.net [69.252.207.34])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 19734E00349
	for <yocto@yoctoproject.org>; Sun, 21 May 2017 16:44:08 -0700 (PDT)
Received: from resomta-ch2-18v.sys.comcast.net ([69.252.207.114])
	by resqmta-ch2-02v.sys.comcast.net with SMTP
	id CaUedvPyMBHfPCaV9dGs8I; Sun, 21 May 2017 23:43:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
	s=q20161114; t=1495410187;
	bh=2JtV2/a1rG+p1nYVT1bO26tlxBE3HiIR9KCi2yefovA=;
	h=Received:Received:From:Content-Type:Mime-Version:Subject:
	Message-Id:Date:To;
	b=nHf0LtoK4XAgBnt+kculcN8CrykEm3YbFStvpAmtYHIf1dnNDZ4aYyVpdOWoRzAFo
	HWfQ1zdgyRI4G6Hco27TL+LZ7ao0cTF6mLaWTwCd9A6+iaHmF3owDQGMv2En58EN6S
	iRr0IG2+l9Hg/C3ijRMgXhVzI1MEH6MZHYMnMKMX7YJK8GvProEVpDjgN6T9sXHgNS
	084SeY11XyPf6Gdoe7LKghGS9gOVslk7fqL7Z2qMzGBw6j7GNK2zfPKCbrUxgeAigQ
	midb/OnfEpHNXu6OcEuaxFTeEzNqw1nPV63qcpIbjP4xv1KAWXIm82AIJlyFnsLuCd
	74JU11F5DGXtw==
Received: from [IPv6:2601:18f:800:acc1::cc14] ([IPv6:2601:18f:800:acc1::cc14])
	by resomta-ch2-18v.sys.comcast.net with SMTP
	id CaV8djKTbStKdCaV9dKEIm; Sun, 21 May 2017 23:43:07 +0000
From: Russell Peterson <bluehills7@comcast.net>
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Message-Id: <3222F3C5-34FC-4373-B40F-5AA8EF9C904E@comcast.net>
Date: Sun, 21 May 2017 19:43:06 -0400
To: yocto@yoctoproject.org
X-Mailer: Apple Mail (2.3273)
X-CMAE-Envelope: MS4wfEqyWBOeX50QSbyec0ENeFzhqN1E0yLNkE8gsCwi+GbsJz9DrGfmdMiG+pDljbQbooYbl87k+8xrqkLinQvtj3RStppHdt3kmaC1zOyEzgNE+ThcZtXY
	+6M4qryZzgu6XTOP2o0JexsKfZBdFgxN5IvCLLrk1hWlJllBuq8tU0ew8xIk+ucEncB28QhlP/7C7Q==
Subject: unmodified binary RPM installed on rootfs?
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
X-List-Received-Date: Sun, 21 May 2017 23:44:09 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_F3E6CBEC-52C3-4DAB-9FD6-1AFA45F00B36"

--Apple-Mail=_F3E6CBEC-52C3-4DAB-9FD6-1AFA45F00B36
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Hello,

I am fairly new to yocto and I think I=E2=80=99m having trouble =
installing an RPM on the rootfs. What I am trying to do is install an =
arm64 binary RPM file straight onto the root file system without a =
recipe=E2=80=A6 just use the native rpm tool to put it there.  There are =
several reasons why I=E2=80=99m experimenting with this.  Seems fairly =
simple but I have now been messing around for days with little to show =
for it.  Here is what I=E2=80=99m doing=E2=80=A6

Added to the image bb file:

=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94

ROOTFS_POSTPROCESS_COMMAND +=3D "install_mtt ; "
=20
IMAGE_LINGUAS ?=3D "en-US=E2=80=9D  <=E2=80=94 Wondered if this was a =
UTF-8 issue
=20
fakeroot install_mft () {
               ${STAGING_BINDIR_NATIVE}/rpm -i --nodeps =
--root=3D${IMAGE_ROOTFS}/ =
/mtt-4.7.0-21-arm64-rpm/RPMS/mtt-4.7.0-21.arm64.rpm
}
=20
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94

This is the error I see.  =20
=20
DEBUG: Executing shell function install_mft
error: unpacking of archive failed: cpio: Bad magic
WARNING: =
/yocto-00dc025f/work/mymach-poky-linux/core-image-full/1.0-r0/temp/run.ins=
tall_mtt.2846:1 exit 1 from =
'/yocto-00dc025f/sysroots/x86_64-linux/usr/bin/rpm -i ---nodeps =
--root=3D/yocto-00dc025f/work/mymach-poky-linux/core-image-full/1.0-r0/roo=
tfs/ /mtt-4.7.0-21-arm64-rpm/RPMS/mtt-4.7.0-21.arm64.rpm=E2=80=99

Seems like this should work.  I have no idea what magic number the file =
command doesn=E2=80=99t like.  I looked through the files and they all =
look legit.  Maybe this is an RPM version issue?  I think the original =
RPM was created with 4.8 and the poky version I=E2=80=99m using is 5.3?



--Apple-Mail=_F3E6CBEC-52C3-4DAB-9FD6-1AFA45F00B36
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D"">Hello,<div class=3D""><br class=3D""></div><div =
class=3D""><span style=3D"font-size: 15px;" class=3D"">I am fairly new =
to yocto and I think I=E2=80=99m having trouble installing an RPM on the =
rootfs. What I am trying to do is install an arm64 binary RPM file =
straight onto the root file system without a recipe=E2=80=A6 just use =
the native rpm tool to put it there. &nbsp;There are several reasons why =
I=E2=80=99m experimenting with this. &nbsp;Seems fairly simple but I =
have now been messing around for days with little to show for it. =
&nbsp;Here is what I=E2=80=99m doing=E2=80=A6</span></div><div =
class=3D""><span style=3D"font-size: 15px;" class=3D""><br =
class=3D""></span></div><div class=3D""><span style=3D"font-size: 15px;" =
class=3D"">Added to the image bb file:</span></div><div class=3D""><br =
class=3D""></div><div class=3D"">=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=
=94=E2=80=94=E2=80=94=E2=80=94</div><div class=3D""><br =
class=3D""></div><div class=3D""><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><font =
color=3D"#263e0f" class=3D"">ROOTFS_POSTPROCESS_COMMAND +=3D =
"install_mtt ; "<o:p class=3D""></o:p></font></div><div style=3D"margin: =
0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D""><o:p class=3D""><font color=3D"#263e0f" =
class=3D"">&nbsp;</font></o:p></div><div style=3D"margin: 0in 0in =
0.0001pt;" class=3D""><font color=3D"#263e0f" class=3D""><font =
face=3D"Calibri, sans-serif" class=3D""><span style=3D"font-size: 11pt;" =
class=3D"">IMAGE_LINGUAS ?=3D "en-US</span><span style=3D"font-size: =
14.666666984558105px;" class=3D"">=E2=80=9D</span><span =
style=3D"font-size: 11pt;" class=3D"">&nbsp; &lt;</span><span =
style=3D"font-size: 14.666666984558105px;" class=3D"">=E2=80=94</span><spa=
n style=3D"font-size: 11pt;" class=3D"">&nbsp;</span><span =
style=3D"font-size: 14.666666984558105px;" class=3D"">Wondered</span><span=
 style=3D"font-size: 11pt;" class=3D"">&nbsp;if this was a UTF-8 =
issue<o:p class=3D""></o:p></span></font></font></div><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D""><o:p class=3D""><font color=3D"#263e0f" =
class=3D"">&nbsp;</font></o:p></div><div style=3D"margin: 0in 0in =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D""><font color=3D"#263e0f" class=3D"">fakeroot install_mft () =
{<o:p class=3D""></o:p></font></div><div style=3D"margin: 0in 0in =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D""><font color=3D"#263e0f" =
class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; ${STAGING_BINDIR_NATIVE}/rpm -i --nodeps =
--root=3D${IMAGE_ROOTFS}/ =
/mtt-4.7.0-21-arm64-rpm/RPMS/mtt-4.7.0-21.arm64.rpm<o:p =
class=3D""></o:p></font></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><font =
color=3D"#263e0f" class=3D"">}<o:p class=3D""></o:p></font></div><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D""><o:p class=3D""><font color=3D"#263e0f" =
class=3D"">&nbsp;</font></o:p></div><div style=3D"margin: 0in 0in =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D"">=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=
</div><div style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; =
font-family: Calibri, sans-serif;" class=3D""><br class=3D""></div><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt;" class=3D"">This is =
the error I see. &nbsp;&nbsp;</div><div style=3D"margin: 0in 0in =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D""><o:p class=3D"">&nbsp;</o:p></div><div style=3D"margin: 0in =
0in 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D"">DEBUG: Executing shell function install_mft<o:p =
class=3D""></o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D"">error: =
unpacking of archive failed: cpio: Bad magic<o:p =
class=3D""></o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D"">WARNING: =
/yocto-00dc025f/work/mymach-poky-linux/core-image-full/1.0-r0/temp/run.ins=
tall_mtt.2846:1 exit 1 from =
'/yocto-00dc025f/sysroots/x86_64-linux/usr/bin/rpm -i ---nodeps =
--root=3D/yocto-00dc025f/work/mymach-poky-linux/core-image-full/1.0-r0/roo=
tfs/ =
/mtt-4.7.0-21-arm64-rpm/RPMS/mtt-4.7.0-21.arm64.rpm=E2=80=99</div></div><d=
iv style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D""><br class=3D""></div><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt;" class=3D"">Seems =
like this should work. &nbsp;I have no idea what magic number the file =
command doesn=E2=80=99t like. &nbsp;I looked through the files and they =
all look legit. &nbsp;Maybe this is an RPM version issue? &nbsp;I think =
the original RPM was created with 4.8 and the poky version I=E2=80=99m =
using is 5.3?</div><div style=3D"margin: 0in 0in 0.0001pt; font-size: =
11pt; font-family: Calibri, sans-serif;" class=3D""><br =
class=3D""></div><div style=3D"margin: 0in 0in 0.0001pt; font-size: =
11pt; font-family: Calibri, sans-serif;" class=3D""><br =
class=3D""></div></body></html>=

--Apple-Mail=_F3E6CBEC-52C3-4DAB-9FD6-1AFA45F00B36--
