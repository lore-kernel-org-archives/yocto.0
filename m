Return-Path: <Aaron_Wright@selinc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D9AE1E00D7B; Fri, 16 Feb 2018 10:03:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, HTTPS_HTTP_MISMATCH,
	RCVD_IN_DNSWL_NONE, SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.117.214.141 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  2.0 HTTPS_HTTP_MISMATCH BODY: HTTPS_HTTP_MISMATCH
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from valiant.selinc.com (valiant.selinc.com [74.117.214.141])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5020CE00DF3
	for <yocto@yoctoproject.org>; Fri, 16 Feb 2018 10:03:41 -0800 (PST)
Received: from pps.filterd (valiant.selinc.com [127.0.0.1])
	by valiant.selinc.com (8.16.0.22/8.16.0.22) with SMTP id w1GI1i9t013519
	for <yocto@yoctoproject.org>; Fri, 16 Feb 2018 10:03:41 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=selinc.com;
	h=to : subject :
	message-id : from : date : content-type : mime-version; s=SELinc2017;
	bh=SKLVEoz1SDnloKk43Qy4iRjHMgAUeYPgwZmZWJyv1e8=;
	b=qBKWztpZm30Oh+7+/yWQ1aFF7Vl6DntdqkZ+2GRkHq3uTiE7RZyzs90Vq5JOTec577hi
	iQsi6EPxfO4/eU007+J8h67mrDaJe2BNSvXqbJLCmNGvP+glUdS0yBUy4xPx7JGqVryS
	4VZqgEJ66UprYsroZXofXS1Gbbw5GSkiQJ3x6vScPa701cwygzAOuCYyXbOY3PEQd0+T
	NIl/GoZhql7LYTbeLWQ+2A79/elRDUmPjCBPxR3dA9s8vHV2n94UtPtG44GSUmfJ2F6e
	uEBzGvnG1fzKkq6rV14yQzupKsPhQoyK4ipaFquQuBAIvfmwGEaecYtSxunpOpiB2nPu
	MQ== 
Received: from edison.ad.selinc.com (edison.ad.selinc.com [10.100.0.15])
	by valiant.selinc.com with ESMTP id 2g5kcehena-1
	for <yocto@yoctoproject.org>; Fri, 16 Feb 2018 10:03:41 -0800
To: Yocto-mailing-list <yocto@yoctoproject.org>
X-KeepSent: D5E0FD88:8B22924C-88258236:006274F6;
 type=4; name=$KeepSent
X-Mailer: IBM Notes Release 9.0.1FP5 Octobe4, 2013
Message-ID: <OFD5E0FD88.8B22924C-ON88258236.006274F6-88258236.006336A5@selinc.com>
From: Aaron_Wright@selinc.com
Date: Fri, 16 Feb 2018 10:03:41 -0800
X-MIMETrack: Serialize by Router on Edison/SEL(Release 9.0.1FP9 HF139|October
	06, 2017) at 02/16/2018 10:03:41 AM,
	Serialize complete at 02/16/2018 10:03:41 AM
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=8807
	signatures=668673
Subject: How to patch local source files
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
X-List-Received-Date: Fri, 16 Feb 2018 18:03:43 -0000
Content-Type: multipart/alternative;
	boundary="=_alternative 006336A588258236_="

--=_alternative 006336A588258236_=
Content-Type: text/plain; charset="US-ASCII"
Content-Transfer-Encoding: Quoted-printable

I've been using "devtool modify/update-recipe" in order to generate=20
patches in bbappends in my layer. However, I've run into a problem that=20
seems like it should be easy, but it isn't.

I want to patch a local source file. As in, a file referenced in SRC_URI=20
that isn't the source code but more like a configuration file or init=20
script.=20

Using the devtool method I get a copy of the file in my layer, but that=20
seems like that would cause maintenance problems down the road when=20
upstream changes the file as I won't automatically pick up the changes.=20
This seems to be the intended behavior though, as this patch[1] says, "We=20
don't want to create patches against the local source files but rather=20
update them directly. Thus, 'oe-local-file' directory is ignored in patch=20
generation when doing update-recipe..." This seems completely opposite of=20
what I want. Why would I want a copy of the file if I changed one line,=20
causing maintenance issues in the future?

Am I understanding this right? Is there a workflow that allows for=20
patching local source files?

[1] https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__patchwork.openem=
bedded.org_patch_104075_&d=3DDwIBAg&c=3DzVFQZQ67ypsA9mYKSCqWmQHiVkCCaN-Gb60=
_N6TVnLk&r=3DIZ3mUDA8X9CZR4hNctKngDDYs_BhK3qVNLG-nWGbW2E&m=3D8pcye74JGQLQcB=
V99bh9bpRb7bX3WqHFUiIq157bDY4&s=3DXLqetQZfaf9jTNco2uT4jCN6FbQ1tHD9F_ZJQvBou=
JI&e=3D

--=_alternative 006336A588258236_=
Content-Type: text/html; charset="US-ASCII"
Content-Transfer-Encoding: Quoted-printable

<font size=3D2 face=3D"sans-serif">I've been using &quot;devtool modify/upd=
ate-recipe&quot;
in order to generate patches in bbappends in my layer. However, I've run
into a problem that seems like it should be easy, but it isn't.</font>
<br>
<br><font size=3D2 face=3D"sans-serif">I want to patch a local source file.
As in, a file referenced in SRC_URI that isn't the source code but more
like a configuration file or init script. </font>
<br>
<br><font size=3D2 face=3D"sans-serif">Using the devtool method I get a copy
of the file in my layer, but that seems like that would cause maintenance
problems down the road when upstream changes the file as I won't automatica=
lly
pick up the changes. This seems to be the intended behavior though, as
this patch[1] says, &quot;We don't want to create patches against the local
source files but rather update them directly. Thus, 'oe-local-file' directo=
ry
is ignored in patch generation when doing update-recipe...&quot; This seems
completely opposite of what I want. Why would I want a copy of the file
if I changed one line, causing maintenance issues in the future?</font>
<br>
<br><font size=3D2 face=3D"sans-serif">Am I understanding this right? Is th=
ere
a workflow that allows for patching local source files?</font>
<br>
<br><font size=3D2 face=3D"sans-serif">[1] </font><a href=3D"https://urldef=
ense.proofpoint.com/v2/url?u=3Dhttps-3A__patchwork.openembedded.org_patch_1=
04075_&d=3DDwMBAg&c=3DzVFQZQ67ypsA9mYKSCqWmQHiVkCCaN-Gb60_N6TVnLk&r=3DIZ3mU=
DA8X9CZR4hNctKngDDYs_BhK3qVNLG-nWGbW2E&m=3D8pcye74JGQLQcBV99bh9bpRb7bX3WqHF=
UiIq157bDY4&s=3DXLqetQZfaf9jTNco2uT4jCN6FbQ1tHD9F_ZJQvBouJI&e=3D"><font siz=
e=3D2 color=3Dblue face=3D"sans-serif">https://patchwork.openembedded.org/p=
atch/104075/</font>[patchwork.openembedded.org]</a>
<br>=

--=_alternative 006336A588258236_=--
