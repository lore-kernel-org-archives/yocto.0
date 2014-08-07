Return-Path: <pourya.shirazian@daimler.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0DDC4E0080A; Thu,  7 Aug 2014 16:32:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_20,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [141.113.102.114 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.0 BAYES_20 BODY: Bayes spam probability is 5 to 20%
	*      [score: 0.0705]
X-Greylist: delayed 2647 seconds by postgrey-1.32 at yocto-www;
	Thu, 07 Aug 2014 16:32:06 PDT
Received: from mail-out.emea.daimler.com (mail-out.emea.daimler.com
	[141.113.102.114])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 656BBE0034B
	for <yocto@yoctoproject.org>; Thu,  7 Aug 2014 16:32:06 -0700 (PDT)
X-AuditID: 351f1470-f79e66d000000f57-bb-53e4021cb8b7
From: pourya.shirazian@daimler.com
To: yocto@yoctoproject.org
Thread-topic: Question about Package Splitting
Thread-index: AQHPspGfaJYWxuFZMkmXGQLX67+blA==
Date: Thu, 07 Aug 2014 22:47:53 +0000
Message-id: <D0095026.15910%pourya.shirazian@daimler.com>
Accept-Language: en-US, de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
MIME-version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrOIsWRmVeSWpSXmKPExsViKq+iqyvL9CTYoP8Xo8Wkl2vYHBg92k/0
	sQUwRnHZpKTmZJalFunbJXBlLP2wk7mgWaTiQd9LpgbGvwJdjJwcEgImEhvX9zND2GISF+6t
	Z+ti5OIQEjjNKDFj4SsmCOcGo8SKI5NZIZw2JolZt28wQjhnGSUmr94A1s8moCSx/38bK4gt
	IiAlcWDuVLC4sICmxNMrc5kh4noSP57sZ4Oxt04+AGazCKhKHNn0jL2LkYODV8BSoqM3AyTM
	KCAr0dnwjgnEZhYQl2huvckCcaqAxJI956HOFpV4+fgfK4QtK3F/9w9WiPoYifbeLYwgNq+A
	oMSPyfdYJjCKzEIyahaSsllIyiDiBhLvz81nhrC1JZYtfA1l60ts/HKWEcK2l1j85S0LspoF
	jByrGFUSi3WT0vN0U3MNdQ2MjPRSc1MT9ZLS9ZLziwqAkVeUqJeXWrKJERx9IgU7GGcusTnE
	KMDBqMTDK/zrcbAQa2JZcWXuIUYJDmYlEd6az0Ah3pTEyqrUovz4otKc1OJDjNIcLErivM5C
	lUFCAumJJanZqakFqUUwWSYOTqkGxt5rLoU2p+ff1hM+d/LZ3KnlqxkMV2TvD0mfdNX1ruvT
	78ach8ycdOdNltfZk9shHv0jqFb5B8vZh/92i//cHL9li17/v22XX8kVr7WO7HnKIJJYk3Jg
	7o5jb3fJ1xdHblwZ+Jxpfb9TS+2lZC6+y6wnv7yyurP32y3lozpn9p7ssz/bvkl69zUlluKM
	REMt5qLiRABjs5lZugIAAA==
Subject: Question about Package Splitting
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
X-List-Received-Date: Thu, 07 Aug 2014 23:32:11 -0000
Content-language: en-US
Content-type: multipart/alternative;
	boundary=_000_D009502615910pouryashiraziandaimlercom_

--_000_D009502615910pouryashiraziandaimlercom_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi,

My question is about producing multiple packages in the same recipe.
I created a recipe e.g. =93project.bb" to produce 5 packages from the same =
source repository. The package names are as following:

  1.  project-frontend
  2.  project-backend
  3.  project-tests
  4.  project-dbg
  5.  project-dev

How do I include these packages in the assembled file system? I.e. Should I=
 just include =93project=94 as the parent name for all the sub-packages or =
I should include =93project-frontend=94, =93project-end=94 etc.
When I tried the latter method only the first package appeared in the final=
 file system.

Thanks

If you are not the addressee, please inform us immediately that you have re=
ceived this e-mail by mistake, and delete it. We thank you for your support=
.


--_000_D009502615910pouryashiraziandaimlercom_
Content-Type: text/html; charset="Windows-1252"
Content-ID: <5975A2C8C7D2D84AB003226C92500998@wp.corpintra.net>
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
</head>
<body style=3D"word-wrap:break-word; color:rgb(0,0,0); font-size:14px; font=
-family:Calibri,sans-serif">
<div>Hi,&nbsp;</div>
<div><br>
</div>
<div>My question is about producing multiple packages in the same recipe.&n=
bsp;</div>
<div>I created a recipe e.g. =93project.bb&quot; to produce 5 packages from=
 the same source repository. The package names are as following:</div>
<ol>
<li>project-frontend</li><li>project-backend</li><li>project-tests</li><li>=
project-dbg</li><li>project-dev</li></ol>
<div>How do I include these packages in the assembled file system? I.e. Sho=
uld I just include =93project=94 as the parent name for all the sub-package=
s or I should include =93project-frontend=94, =93project-end=94 etc.</div>
<div>When I tried the latter method only the first package appeared in the =
final file system.</div>
<div><br>
</div>
<div>Thanks</div>
<table cellpadding=3D"0" cellspacing=3D"0" border=3D"0">
<font face=3D"sans-serif, Arial, Helvetica" size=3D"-1" color=3D"#808080"><=
br>
If you are not the addressee, please inform us immediately that you have re=
ceived this e-mail by mistake, and delete it. We thank you for your support=
.<br>
<br>
</font>
</table>
</body>
</html>

--_000_D009502615910pouryashiraziandaimlercom_--
