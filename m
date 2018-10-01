Return-Path: <Kamal.Pandey@ifm.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 26B94E00B93; Sun, 30 Sep 2018 23:22:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [91.90.150.23 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from s2023.ppsmtp.net (s2023.ppsmtp.net [91.90.150.23])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C89A0E00B58
	for <yocto@yoctoproject.org>; Sun, 30 Sep 2018 23:22:05 -0700 (PDT)
Received: from pps.filterd (s2023.ppsmtp.net [127.0.0.1])
	by s2023.ppsmtp.net (8.16.0.22/8.16.0.22) with SMTP id w916Kcf9014302
	for <yocto@yoctoproject.org>; Mon, 1 Oct 2018 08:22:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ifm.com;
	h=from : to : subject :
	date : message-id : mime-version : content-type :
	content-transfer-encoding; s=pps;
	bh=/uLxz9qh5iYJOa2eAt585mK26XYtSu3O7I6xJyk2g+s=;
	b=pi3D/zN4bf+cGRI3d7VehwHtIVSJ9pBeG0Ke1/OdMNauFrgwIf8pneFI+bS7Knkrwgsh
	aV4cxbZvcul9zo3kEZ7iHmdk4g8UrkVGk/Pqd3+j7v0oMWRwUCBuw97L2fYpLxxedT6j
	o9BId/q7wcfZ3lfL4y2hZkVz30T+kQlCMjmdYme3Tedr9ILS/rD6HA/NeMvz+7tQrh3q
	WOvttAZBlog9oxp54WpnXKPQO/NlYMtFBdXuc5/leug09/55VJ8egFB7EmIu00qeMZew
	5VXgfr/kL1wHGdEREGwmwDJCG7FYAp1J9QQK+yegqOlCC4SU9suEnvLU5uOatsP7EOvI
	TA== 
Received: from deesdmz226.dmz.es.de.ifm (mail26.ifm.com [194.156.152.226])
	by s2023.ppsmtp.net with ESMTP id 2msyfb997s-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO)
	for <yocto@yoctoproject.org>; Mon, 01 Oct 2018 08:22:04 +0200
Received: from deesdmz226.dmz.es.de.ifm (localhost.localdomain [127.0.0.1])
	by deesdmz226.dmz.es.de.ifm (Postfix) with ESMTP id B69B870383A
	for <yocto@yoctoproject.org>; Mon,  1 Oct 2018 08:22:03 +0200 (CEST)
From: "Pandey, Kamal" <Kamal.Pandey@ifm.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: upgrading packages in yocto
Thread-Index: AdRZTbnDja7E1foPSHy9mRtn1pLEyg==
Date: Mon, 1 Oct 2018 06:21:51 +0000
Message-ID: <053f87023fdf4190982b0595969a57c7@ifm.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.29.169.96]
X-TM-AS-Product-Ver: SMEX-12.5.0.1300-8.2.1013-24128.004
X-TM-AS-Result: No-5.727600-5.000000-10
X-TMASE-MatchedRID: 6IstDyeExSAvNrZWafu2HjPDkSOzeDWWyeUl7aCTy8j4JyR+b5tvoJBf
	OaJypknFcxjdKz7D+wn0B1OFyYhwkwQ1tkOR9wm8zNY33yIEF4YUkWvaqUqLH2brQ6i6Mw7IjvS
	E0GIwfEUs/gWH3TDQW+3O2ioTFRQI373xijHxhHyUO0lP0LYg0vIoJIKT+UadEd+K6O5Nt50j5d
	BrwexV2NI3hFtWImOovpC6O9okKzByLRNB8l2mxeaoWp3dMEADF43xkw8RMy2SLiCOgnAfc5Trb
	O9zUOWjQcV2t2YzAY1BAiJopeTv0K+/EguYor8c/sToY2qzpx7dB/CxWTRRu25FeHtsUoHuDVH1
	fq+GbHwj4BfMyLstWoLJhrnZCGcY5EfKFBJim/sfwV6sBPR0lg==
X-TM-AS-User-Approved-Sender: Yes
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--5.727600-5.000000
X-TMASE-Version: SMEX-12.5.0.1300-8.2.1013-24128.004
X-TM-SNTS-SMTP: 966AFE278E48345162BBEE13FD9437F521A65367E0E3FB335D7973E0D7FC9F5A2002:9
x-c2processedorg: 02c94ccb-b9eb-40fe-af38-4bcaa8aaafa4
MIME-Version: 1.0
X-CompuMailGateway: Version: 7.00.0.19050.x86_64 COMPUMAIL Date:
	20181001062203Z
X-Proofpoint-ID: SID=2msyfb997s QID=2msyfb997s-1
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
	definitions=2018-10-01_03:, , signatures=0
Subject: upgrading packages in yocto
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
X-List-Received-Date: Mon, 01 Oct 2018 06:22:07 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I want to upgrade some packages of poky/meta/recipes-graphics/ like weston_=
2.0.0.bb to weston_4.0.0.bb. Also I don't want any changes to be made in po=
ky/meta layer. What is the best way of doing these kinds of upgradations. I=
 think bbappend here will create problems as the SRC_URI and other variable=
s use the PV from recipe name to fulfil some operations.
The other thing I can do is create a weston_4.0.0.bb file in my own custom =
layer and work but then I don't know how to disable the older(original) wes=
ton_2.0.0.bb file.
What will be the best method to upgrade packages. One thing to remind you t=
hat the SRC_URI is not a repository , it's a tarball repo. So I directly ca=
n't replace the SRC_URI in .bbappend file.
Any leads regarding this will be appreciated.

-----Original Message-----
From: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> On Be=
half Of yocto-request@yoctoproject.org
Sent: 30 September 2018 00:30
To: yocto@yoctoproject.org
Subject: yocto Digest, Vol 96, Issue 79

Send yocto mailing list submissions to
	yocto@yoctoproject.org

To subscribe or unsubscribe via the World Wide Web, visit
	https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__lists.yoctoproject.=
org_listinfo_yocto&d=3DDwICAg&c=3DriR7jviByh3sGm7GIiSlHkFN0_aSATB6A8x0nHa2E=
M0&r=3DB4t2KSJ3IM1b9sK9gvCmTFe5JX-rxgD15fYh5lG11MM&m=3DZi9dlMz5JoZfKdwcbr7e=
V_JK7qB8SJTPYP9LdRWnlG8&s=3DRQp-3-7SeXpR_ysQqD1qg5XYb2ycNNJlz5k63RsTovE&e=
=3D
or, via email, send a message with subject or body 'help' to
	yocto-request@yoctoproject.org

You can reach the person managing the list at
	yocto-owner@yoctoproject.org

When replying, please edit your Subject line so it is more specific than "R=
e: Contents of yocto digest..."


