Return-Path: <kalle@zapdevelopment.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0E0B8E008DC; Tue, 27 Jan 2015 02:29:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.47.247.221 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mailrelay3.public.one.com (mailrelay3.public.one.com
	[195.47.247.221])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB604E0083A
	for <yocto@yoctoproject.org>; Tue, 27 Jan 2015 02:29:17 -0800 (PST)
X-HalOne-Cookie: 55b8a960dd4a39a9415c84db5ebd87511eb80dd0
X-HalOne-ID: 562b3743-a60f-11e4-ba3a-b8ca3afa9d73
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=zapdevelopment.com; s=20140924;
	h=from:reply-to:subject:date:message-id:to:cc:mime-version:content-type:
	in-reply-to:references;
	bh=t+gpFxeXUn6mEYBQX8PyRroLMDWiCKASbJr/oZf0Pm8=;
	b=SMkQgGRfrK4p6qyGZqqUjI7E0/wKNmFVb0mD81+7XTrXdD131T4CizqdH94RkFF64xsPmkHLL/WXn
	DGObAYXMTVSMGbBces5oIg6O9iSKpMCtflJsTbsjDpDor/Ws6+pWJeID17r+GSkh9TenTm1CBykqXr
	GnxIVdsHnlJkCpFk=
Received: from webmail7 (unknown [10.246.6.7])
	by smtpfilter1.public.one.com (Halon Mail Gateway) with SMTP;
	Tue, 27 Jan 2015 10:29:12 +0000 (GMT)
X-Originating-IP: 10.246.4.248
User-Agent: One.com webmail 10.3.0
In-Reply-To: <1639085.ayJ6cVLrAT@peggleto-mobl5.ger.corp.intel.com>
References: <1639085.ayJ6cVLrAT@peggleto-mobl5.ger.corp.intel.com>
MIME-Version: 1.0
Message-ID: <1422354552195.91079.26128@webmail7>
Date: Tue, 27 Jan 2015 10:29:12 GMT
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
X-List-Received-Date: Tue, 27 Jan 2015 10:29:27 -0000
Content-Type: multipart/alternative; boundary="----------26126-1422354552195-1"

------------26126-1422354552195-1
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

Hi again,

I just modified my recipe with the patchdir.
SRC_URI =3D "
xxxxx.patch;patchdir=3Dbackports/

I can see that the patches are copied to the destination where I want them =
but for some reason they all fail when yocto tries to apply them.
If I go manually to the destination git and type "git am xxxxx.patch" the a=
ll apply with no problem, I also tried to "patch -p1 < xxxxx.patch" and tha=
t worked to.
Maybe I should play a bit with the striplevel? But I do think that yocto sh=
ould be able to handle it from the point where I gave it the patchdir=3D..

BR
-Kalle Komierowski



On January 26, 2015, Paul Eggleton <paul.eggleton@linux.intel.com> wrote:
> On Monday 26 January 2015 11:24:50 Kalle Komierowski wrote:
> > On January 26, 2015, Paul Eggleton <<paul.eggleton@linux.intel.com>> wr=
ote:
> > > Hi Kalle,
> > >=20
> > > On Saturday 24 January 2015 08:34:56 Kalle Komierowski wrote:
> > > > I'm working with the ti-compat-wireless recipe.
> > > > It contains two gits like this:
> > > >=20
> > > > SRC_URI =3D
> > > > "git://git.ti.com/wilink8-wlan/wl18xx.git;branch=3D${BRANCH_wl18xx}=
;destsu
> > > > ffi
> > > > x=3Dwl18xx;name=3Dwl18xx \
> > > > git://git.ti.com/wilink8-wlan/backports.git;branch=3D${BRANCH_backp=
orts};d
> > > > est
> > > > suffix=3Dbackports;name=3Dbackports \ file://wl18xx.patch \
> > > >=20
> > > > Now I want to add the wl18xx.patch file, and this file ends up in t=
he S
> > > > and
> > > > applying it fails since the git it should be applied to is under
> > > > S/backports due to the destsuffix.
> > > >=20
> > > > I tried to use the quilt and create new patches from the S but they=
 fail
> > > > to.
> > > >=20
> > > > What would be the correct way of adding a patch so it applies to
> > > > backports?
> > > >=20
> > > You may find the patchdir option for the patch SRC_URI entry to be us=
eful.
> > > I should imagine you'll want something like:
> > > ...
> > > file://wl18xx.patch;patchdir=3D../backports
> > > ...
> > >=20
> > >=20
> > Thanks Paul!
> >=20
> > I was hoping it was as simple as that but I couldn't find info about it=
.
> > Maybe if it was just called destsuffix like when it's used for gits.
> >=20
> destsuffix and patchdir aren't quite the same though - destsuffix control=
s where
> the git repository is unpacked, whereas patchdir is the directory that th=
e
> patch is applied in rather than where the patch file itself is written to=
.
>=20
> (Oddly, as it happens, patchdir is in the documentation and destsuffix is=
n't -
> Scott, we'll have to take care of that.)
>=20
> Cheers,
> Paul
>=20
> --=20
>=20
> Paul Eggleton
> Intel Open Source Technology Centre
> 

------------26126-1422354552195-1
Content-Type: multipart/related; boundary="----------26126-1422354552195-2"

------------26126-1422354552195-2
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

Hi again,<br /><br />I just modified my recipe with the patchdir.<br />SRC_=
URI =3D "<br />=C2=A0=C2=A0=C2=A0 xxxxx.patch;patchdir=3Dbackports/<br /><b=
r />I can see that the patches are copied to the destination where I want t=
hem but for some reason they all fail when yocto tries to apply them.<br />=
If I go manually to the destination git and type "git am xxxxx.patch" the a=
ll apply with no problem, I also tried to "patch -p1 &lt; xxxxx.patch" and =
that worked to.<br />Maybe I should play a bit with the striplevel? But I d=
o think that yocto should be able to handle it from the point where I gave =
it the patchdir=3D..<br /><br />BR<br />-Kalle Komierowski<br /><br /><br /=
><p>On January 26, 2015, Paul Eggleton &lt;paul.eggleton@linux.intel.com&gt=
; wrote:</p><blockquote type=3D"cite"><div class=3D"oneComWebmail-mail"><di=
v class=3D"oneComWebmail-body">On Monday 26 January 2015 11:24:50 Kalle Kom=
ierowski wrote:<br /><blockquote>On January 26, 2015, Paul Eggleton &lt;<a =
href=3D"mailto:paul.eggleton@linux.intel.com">paul.eggleton@linux.intel.com=
</a>&gt; wrote:<br /><blockquote>Hi Kalle,<br /><br />On Saturday 24 Januar=
y 2015 08:34:56 Kalle Komierowski wrote:<br /><blockquote>I'm working with =
the ti-compat-wireless recipe.<br />It contains two gits like this:<br /><b=
r />SRC_URI =3D<br />"git://git.ti.com/wilink8-wlan/wl18xx.git;branch=3D${B=
RANCH_wl18xx};destsu<br />ffi<br />x=3Dwl18xx;name=3Dwl18xx \<br />git://gi=
t.ti.com/wilink8-wlan/backports.git;branch=3D${BRANCH_backports};d<br />est=
<br />suffix=3Dbackports;name=3Dbackports \ file://wl18xx.patch \<br /><br =
/>Now I want to add the wl18xx.patch file, and this file ends up in the S<b=
r />and<br />applying it fails since the git it should be applied to is und=
er<br />S/backports due to the destsuffix.<br /><br />I tried to use the qu=
ilt and create new patches from the S but they fail<br />to.<br /><br />Wha=
t would be the correct way of adding a patch so it applies to<br />backport=
s?<br /></blockquote><br />You may find the patchdir option for the patch S=
RC_URI entry to be useful.<br />I should imagine you'll want something like=
:<br />...<br />file://wl18xx.patch;patchdir=3D../backports<br />...<br /><=
br /></blockquote><br />Thanks Paul!<br /><br />I was hoping it was as simp=
le as that but I couldn't find info about it.<br />Maybe if it was just cal=
led destsuffix like when it's used for gits.<br /></blockquote><br />destsu=
ffix and patchdir aren't quite the same though - destsuffix controls where =
<br />the git repository is unpacked, whereas patchdir is the directory tha=
t the <br />patch is applied in rather than where the patch file itself is =
written to.<br /><br />(Oddly, as it happens, patchdir is in the documentat=
ion and destsuffix isn't - <br />Scott, we'll have to take care of that.)<b=
r /><br />Cheers,<br />Paul <br /><br />-- <br /><br />Paul Eggleton<br />I=
ntel Open Source Technology Centre<br /></div></div></blockquote>

------------26126-1422354552195-2--

------------26126-1422354552195-1--
