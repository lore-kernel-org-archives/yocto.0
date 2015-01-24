Return-Path: <kalle@zapdevelopment.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3B709E00932; Sat, 24 Jan 2015 00:36:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.6 required=5.0 tests=BAYES_05,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, MIME_QP_LONG_LINE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.47.247.78 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.5 BAYES_05 BODY: Bayes spam probability is 1 to 5%
	*      [score: 0.0201]
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 64 seconds by postgrey-1.32 at yocto-www;
	Sat, 24 Jan 2015 00:36:07 PST
Received: from mailrelay10.public.one.com (mailrelay10.public.one.com
	[195.47.247.78])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 67D47E002F9
	for <yocto@yoctoproject.org>; Sat, 24 Jan 2015 00:36:06 -0800 (PST)
X-HalOne-Cookie: c745a3065b937e7c6ff46cfc17803f506ed7102c
X-HalOne-ID: e04fa844-a3a3-11e4-9705-b82a72d06996
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=zapdevelopment.com; s=20140924;
	h=from:reply-to:subject:date:message-id:to:mime-version:content-type;
	bh=2jL776UZPLEiBJ1MqIgAXLsBWVXuI3Tdkp0t2t0s5CM=;
	b=D44IYi4gEXqH0G4uXwWvB/AbnIZIJfE5qiaf+BXE8x2YzMWGLQbWjpucFTZI1/aITv7Q4XJketFaw
	zuj9EV6aUwPpQYboLbfnXz15ZWCg6B+UDLrn70zrlYM8uWqcTar9i63cBMuM4Eqv/0C6JypPV+c0iB
	2sw5d+GoGxmSPg1c=
Received: from webmail7 (unknown [10.246.6.7])
	by smtpfilter3.public.one.com (Halon Mail Gateway) with SMTP
	for <yocto@yoctoproject.org>; Sat, 24 Jan 2015 08:34:56 +0000 (GMT)
X-Originating-IP: 10.246.4.242
User-Agent: One.com webmail 10.3.0
MIME-Version: 1.0
Message-ID: <1422088496154.91079.4854@webmail7>
Date: Sat, 24 Jan 2015 08:34:56 GMT
To: <yocto@yoctoproject.org>
From: "Kalle Komierowski" <kalle@zapdevelopment.com>
Subject: One recipe, two gits with destsuffix, how to patch?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: kalle@zapdevelopment.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 24 Jan 2015 08:36:10 -0000
Content-Type: multipart/alternative; boundary="----------4852-1422088496154-1"

------------4852-1422088496154-1
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

Hi,

This is my first post to this list.

I'm working with the ti-compat-wireless recipe.
It contains two gits like this:

SRC_URI =3D "git://git.ti.com/wilink8-wlan/wl18xx.git;branch=3D${BRANCH_wl1=
8xx};destsuffix=3Dwl18xx;name=3Dwl18xx \
git://git.ti.com/wilink8-wlan/backports.git;branch=3D${BRANCH_backports};de=
stsuffix=3Dbackports;name=3Dbackports \
file://wl18xx.patch \

Now I want to add the wl18xx.patch file, and this file ends up in the S and=
 applying it fails since the git it should be applied to is under S/backpor=
ts due to the destsuffix.

I tried to use the quilt and create new patches from the S but they fail to=
.

What would be the correct way of adding a patch so it applies to backports?=


Thanks
BR
-Kalle Komierowski


------------4852-1422088496154-1
Content-Type: multipart/related; boundary="----------4852-1422088496154-2"

------------4852-1422088496154-2
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

Hi, <br /><br />This is my first post to this list.<br /><br />I'm working =
with the ti-compat-wireless recipe.<br />It contains two gits like this:<br=
 /><br />SRC_URI =3D "git://git.ti.com/wilink8-wlan/wl18xx.git;branch=3D${B=
RANCH_wl18xx};destsuffix=3Dwl18xx;name=3Dwl18xx \<br />=C2=A0=C2=A0=C2=A0 =
=C2=A0=C2=A0 git://git.ti.com/wilink8-wlan/backports.git;branch=3D${BRANCH_bac=
kports};destsuffix=3Dbackports;name=3Dbackports \<br />=C2=A0=C2=A0=C2=A0 =
=C2=A0=C2=A0 file://wl18xx.patch=C2=A0=C2=A0=C2=A0 \<br /><br />Now I want to =
add the wl18xx.patch file, and this file ends up in the S and applying it f=
ails since the git it should be applied to is under S/backports due to the =
destsuffix.<br /><br />I tried to use the quilt and create new patches from=
 the S but they fail to.<br /><br />What would be the correct way of adding=
 a patch so it applies to backports?<br /><br />Thanks<br />BR<br />-Kalle =
Komierowski<br />

------------4852-1422088496154-2--

------------4852-1422088496154-1--
