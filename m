Return-Path: <kalle@zapdevelopment.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DAFD2E0076F; Mon, 26 Jan 2015 03:28:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 129 seconds by postgrey-1.32 at yocto-www;
	Mon, 26 Jan 2015 03:28:43 PST
Received: from mailrelay8.public.one.com (mailrelay8.public.one.com
	[91.198.169.216])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9DC12E003AB
	for <yocto@yoctoproject.org>; Mon, 26 Jan 2015 03:28:43 -0800 (PST)
X-HalOne-Cookie: e6aabd9e26494d281c94a7a71c853465c950bdc4
X-HalOne-ID: f1a0ef3c-a54d-11e4-bf9a-b82a72cffc46
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=zapdevelopment.com; s=20140924;
	h=from:reply-to:subject:date:message-id:to:cc:mime-version:content-type:
	in-reply-to:references;
	bh=y5dqraIZKWx5ebiq18cXc3Zk38kzc1wAyqoPW7r16JE=;
	b=Udt0q5oZSPqRNRlVlfx7KYJR8hJEq/q2BO5YhyxgLB79+45p/v63RedD+DXsosNw6D/GZZqOWbBb6
	0gDV7gQk11+/LhtiD4fuTOohtz82DEW+A3/6jSNnRWiwbZvHunUzLgiNLmuTGSaqHQPka3+rR7jTns
	U/FJrotms5KDyXiE=
Received: from webmail7 (unknown [10.246.6.7])
	by smtpfilter4.public.one.com (Halon Mail Gateway) with SMTP;
	Mon, 26 Jan 2015 11:24:51 +0000 (GMT)
X-Originating-IP: 10.246.4.248
User-Agent: One.com webmail 10.3.0
In-Reply-To: <4306797.WdQFOdy7Io@peggleto-mobl5.ger.corp.intel.com>
References: <4306797.WdQFOdy7Io@peggleto-mobl5.ger.corp.intel.com>
MIME-Version: 1.0
Message-ID: <1422271490695.91079.15256@webmail7>
Date: Mon, 26 Jan 2015 11:24:50 GMT
To: "Paul Eggleton" <paul.eggleton@linux.intel.com>
From: "Kalle Komierowski" <kalle@zapdevelopment.com>
Cc: yocto@yoctoproject.org
Subject: Re: One recipe, two gits with destsuffix, how to patch?
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
X-List-Received-Date: Mon, 26 Jan 2015 11:28:48 -0000
Content-Type: multipart/alternative; boundary="----------15254-1422271490695-1"

------------15254-1422271490695-1
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

Thanks Paul!

I was hoping it was as simple as that but I couldn't find info about it. Ma=
ybe if it was just called destsuffix like when it's used for gits.

BR
-Kalle Komierowski



On January 26, 2015, Paul Eggleton <paul.eggleton@linux.intel.com> wrote:
> Hi Kalle,
>=20
> On Saturday 24 January 2015 08:34:56 Kalle Komierowski wrote:
> > I'm working with the ti-compat-wireless recipe.
> > It contains two gits like this:
> >=20
> > SRC_URI =3D
> > "git://git.ti.com/wilink8-wlan/wl18xx.git;branch=3D${BRANCH_wl18xx};des=
tsuffi
> > x=3Dwl18xx;name=3Dwl18xx \
> > git://git.ti.com/wilink8-wlan/backports.git;branch=3D${BRANCH_backports=
};dest
> > suffix=3Dbackports;name=3Dbackports \ file://wl18xx.patch \
> >=20
> > Now I want to add the wl18xx.patch file, and this file ends up in the S=
 and
> > applying it fails since the git it should be applied to is under
> > S/backports due to the destsuffix.
> >=20
> > I tried to use the quilt and create new patches from the S but they fai=
l to.
> >=20
> > What would be the correct way of adding a patch so it applies to backpo=
rts?
> >=20
> You may find the patchdir option for the patch SRC_URI entry to be useful=
. I
> should imagine you'll want something like:
> ...
> file://wl18xx.patch;patchdir=3D../backports
> ...
>=20
> Cheers,
> Paul
>=20
> --=20
>=20
> Paul Eggleton
> Intel Open Source Technology Centre
> 

------------15254-1422271490695-1
Content-Type: multipart/related; boundary="----------15254-1422271490695-2"

------------15254-1422271490695-2
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

Thanks Paul!<br /><br />I was hoping it was as simple as that but I couldn'=
t find info about it. Maybe if it was just called destsuffix like when it's=
 used for gits.<br /><br />BR<br />-Kalle Komierowski<br /><br /><br /><p>O=
n January 26, 2015, Paul Eggleton &lt;paul.eggleton@linux.intel.com&gt; wro=
te:</p><blockquote type=3D"cite"><div class=3D"oneComWebmail-mail"><div cla=
ss=3D"oneComWebmail-body">Hi Kalle,<br /><br />On Saturday 24 January 2015 =
08:34:56 Kalle Komierowski wrote:<br /><blockquote>I'm working with the ti-=
compat-wireless recipe.<br />It contains two gits like this:<br /><br />SRC=
_URI =3D<br />"git://git.ti.com/wilink8-wlan/wl18xx.git;branch=3D${BRANCH_w=
l18xx};destsuffi<br />x=3Dwl18xx;name=3Dwl18xx \<br />git://git.ti.com/wili=
nk8-wlan/backports.git;branch=3D${BRANCH_backports};dest<br />suffix=3Dback=
ports;name=3Dbackports \ file://wl18xx.patch \<br /><br />Now I want to add=
 the wl18xx.patch file, and this file ends up in the S and<br />applying it=
 fails since the git it should be applied to is under<br />S/backports due =
to the destsuffix.<br /><br />I tried to use the quilt and create new patch=
es from the S but they fail to.<br /><br />What would be the correct way of=
 adding a patch so it applies to backports?<br /></blockquote><br />You may=
 find the patchdir option for the patch SRC_URI entry to be useful. I <br /=
>should imagine you'll want something like:<br />...<br />file://wl18xx.pat=
ch;patchdir=3D../backports<br />...<br /><br />Cheers,<br />Paul<br /><br /=
>-- <br /><br />Paul Eggleton<br />Intel Open Source Technology Centre<br /=
></div></div></blockquote>

------------15254-1422271490695-2--

------------15254-1422271490695-1--
