Return-Path: <bluehills7@comcast.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 71A6DE00B01; Tue, 20 Jun 2017 10:34:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.7 required=5.0 tests=BAYES_50,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bluehills7[at]comcast.net)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
	*      [score: 0.4930]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [96.114.154.160 listed in list.dnswl.org]
X-Greylist: delayed 61 seconds by postgrey-1.32 at yocto-www;
	Tue, 20 Jun 2017 10:34:10 PDT
Received: from resqmta-po-01v.sys.comcast.net (resqmta-po-01v.sys.comcast.net
	[96.114.154.160])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F064E0094C
	for <yocto@yoctoproject.org>; Tue, 20 Jun 2017 10:34:10 -0700 (PDT)
Received: from resomta-po-11v.sys.comcast.net ([96.114.154.235])
	by resqmta-po-01v.sys.comcast.net with SMTP
	id NN1XdxNnNge2xNN1ZdoDOJ; Tue, 20 Jun 2017 17:33:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
	s=q20161114; t=1497979989;
	bh=Abo6242IdTgERfbYxaLPO0ReJY0LZ4M1xucmjjgwUWM=;
	h=Received:Received:Date:From:Reply-To:To:Message-ID:Subject:
	MIME-Version:Content-Type;
	b=b1o6sZrDJyASwt/MGQWVxeHKbW60byghunUo4bcoBl35f4d41DysgbZoO7YduG2B9
	Gf1cpIyEQ0/SsstEL1+vqvS8MVHdbujcI/PkeJWJLpfRuKEJoV5v2VQoBz+3z0eygb
	CzHgFD5+m8hb2qePDp2xvNs4sXWzkuCF8MaE7N2DZ+IrE2doKu3cDdrs5mxcKFb9bA
	UoG67VtBBaQfT85igwlmpqr/l3B3yN46asAb8H5e0LW+/sBSWUCpGm98v+G53dqsQp
	QSnDh6KGrusI2paDiGWi6xygAlpVM1oE6EBXxdYSzcGto6BDYIjJYQVAKPkNNhWRmF
	v6aT7PUN9+V1A==
Received: from oxapp-asb-50o.email.comcast.net ([96.118.63.161])
	by resomta-po-11v.sys.comcast.net with SMTP
	id NN1YdAXNUnaRwNN1YdKFTK; Tue, 20 Jun 2017 17:33:09 +0000
Date: Tue, 20 Jun 2017 13:33:08 -0400 (EDT)
From: RUSSELL PETERSON <bluehills7@comcast.net>
To: yocto@yoctoproject.org
Message-ID: <451891208.531376.1497979988430@connect.xfinity.com>
MIME-Version: 1.0
X-Priority: 3
Importance: Medium
X-Mailer: Open-Xchange Mailer v7.8.3-Rev20
X-Originating-IP: ::ffff:216.156.69.42
X-Originating-Client: open-xchange-appsuite
X-CMAE-Envelope: MS4wfLEKO5P3oVOJVxQa+qYR9bnKAQBgI8fO7z2X0rTsjWMhz09eotdi9L2B3x8kUD9PirtHbhgoofNXK4fvVjHEEyX4HFnXaiz9R8ii2kBqPeqbR2NXDuP3
	nd3LjTXm3Ziqd5ugRYvg4sA1gImURnq+fiG5hVCjaM0WrkDVPPtOPgWtoKZ96EdgJEMJM+ePLB0O7c4z94HNZVpFCnHULkdumAE=
Subject: patch files
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: RUSSELL PETERSON <bluehills7@comcast.net>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 20 Jun 2017 17:34:10 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_531375_1531201314.1497979988427"

------=_Part_531375_1531201314.1497979988427
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hello,


I am fetching a src RPM file inside a simple library.  The RPM basically contains a tar file with the source and 2 patch files.  How to I apply those patch files?  If I put them in the SRC_URI the fetch fails.  Is there a way I can add them to some list that do_patche uses or do something in do_patch_prepend??


Regards,


Russell


------=_Part_531375_1531201314.1497979988427
MIME-Version: 1.0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html><head>
    <meta charset=3D"UTF-8">
</head><body><p><span style=3D"color: rgb(51, 51, 51); font-family: helveti=
ca, arial, sans-serif; font-size: 12pt; background-color: rgb(255, 255, 255=
);">Hello,</span><br></p><p><span style=3D"color: rgb(51, 51, 51); font-fam=
ily: helvetica, arial, sans-serif; font-size: 12pt; background-color: rgb(2=
55, 255, 255);"><br></span></p><p><span style=3D"color: rgb(51, 51, 51); fo=
nt-family: helvetica, arial, sans-serif; font-size: 12pt; background-color:=
 rgb(255, 255, 255);">I am fetching a src RPM file inside a simple library.=
 &#160;The RPM basically contains a tar file with the source and 2 patch fi=
les. &#160;How to I apply those patch files? &#160;If I put them in the SRC=
_URI the fetch fails. &#160;Is there a way I can add them to some list that=
 do_patche uses or do something in do_patch_prepend??</span></p><p><span st=
yle=3D"color: rgb(51, 51, 51); font-family: helvetica, arial, sans-serif; f=
ont-size: 12pt; background-color: rgb(255, 255, 255);"><br></span></p><p><s=
pan style=3D"color: rgb(51, 51, 51); font-family: helvetica, arial, sans-se=
rif; font-size: 12pt; background-color: rgb(255, 255, 255);">Regards,</span=
></p><p><span style=3D"color: rgb(51, 51, 51); font-family: helvetica, aria=
l, sans-serif; font-size: 12pt; background-color: rgb(255, 255, 255);"><br>=
</span></p><p><span style=3D"color: rgb(51, 51, 51); font-family: helvetica=
, arial, sans-serif; font-size: 12pt; background-color: rgb(255, 255, 255);=
">Russell</span></p><p><span style=3D"color: rgb(51, 51, 51); font-family: =
helvetica, arial, sans-serif; font-size: 12pt; background-color: rgb(255, 2=
55, 255);"><br></span></p></body></html>
=20

------=_Part_531375_1531201314.1497979988427--
