Return-Path: <B29882@freescale.com>
Received: from VA3EHSOBE010.bigfish.com (va3ehsobe004.messaging.microsoft.com
	[216.32.180.14])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39229E00306
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2012 15:14:04 -0800 (PST)
Received: from mail16-va3-R.bigfish.com (10.7.14.249) by
	VA3EHSOBE010.bigfish.com (10.7.40.12) with Microsoft SMTP Server id
	14.1.225.22; Mon, 30 Jan 2012 23:14:02 +0000
Received: from mail16-va3 (localhost [127.0.0.1])	by mail16-va3-R.bigfish.com
	(Postfix) with ESMTP id 800BC160417;
	Mon, 30 Jan 2012 23:14:02 +0000 (UTC)
X-SpamScore: -13
X-BigFish: VS-13(zzbb2dI9371I1432N1418M98dKzz1202hzz8275bh8275dhz2dhc1bhc31hc1ah2a8h668h839h8e2h8e3hbe9k)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
Received: from mail16-va3 (localhost.localdomain [127.0.0.1]) by mail16-va3
	(MessageSwitch) id 1327965241314733_11174;
	Mon, 30 Jan 2012 23:14:01 +0000 (UTC)
Received: from VA3EHSMHS014.bigfish.com (unknown [10.7.14.253])	by
	mail16-va3.bigfish.com (Postfix) with ESMTP id 45CE440045;
	Mon, 30 Jan 2012 23:14:01 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by VA3EHSMHS014.bigfish.com
	(10.7.99.24) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Mon, 30 Jan 2012 23:14:01 +0000
Received: from 039-SN1MPN1-002.039d.mgd.msft.net ([169.254.2.86]) by
	039-SN1MMR1-003.039d.mgd.msft.net ([10.84.1.16]) with mapi id
	14.01.0355.003; Mon, 30 Jan 2012 17:14:00 -0600
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: jfabernathy <jfabernathy@gmail.com>
Thread-Topic: [yocto] Using stable releases from git
Thread-Index: AQHM36TZAfTIO2i+O0iEJNU8g1pycQ==
Date: Mon, 30 Jan 2012 23:13:59 +0000
Message-ID: <CAEsOVNfSju7Dn+OnrnDGm3O-ASOUmOyz+Xm42LomVR63UqH3-g@mail.gmail.com>
References: <4F2720B1.8070001@linux.intel.com> <4F27222D.7010302@gmail.com>
In-Reply-To: <4F27222D.7010302@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [99.47.177.27]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Using stable releases from git
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: McClintock Matthew-B29882 <B29882@freescale.com>
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 30 Jan 2012 23:14:04 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <82CD00ED4255974A8ACD2A1162611BC5@freescale.net>
Content-Transfer-Encoding: quoted-printable

On Mon, Jan 30, 2012 at 5:05 PM, jfabernathy <jfabernathy@gmail.com> wrote:
> On 01/30/2012 05:58 PM, Joshua Lock wrote:
>
> It's beginning to sound like we've caught some folks off guard by pushing
> changes to the edison branch of the poky repository in preparation for an
> upcoming edison point release.
>
> The named branches are development branches for the release, stable relea=
se
> development will be done in the named branch and we can't guarantee they
> will be issue free (though we intend them to be where possible).
>
> If you're looking to use a git checkout which matches the release tarball=
s
> you should checkout the tags for the releases. i.e. for Poky
> Edison-6.0/Yocto 1.1:
>
> http://git.yoctoproject.org/cgit/cgit.cgi/poky/tag/?id=3Dedison-6.0
> http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/tag/?id=3Dedison-6.0
>
> So instead of doing:
>
> git checkout -b edison origin/edison
>
> what should I do if I want to stay in sync with the tarball.  This may ju=
st
> be a doc problem.

git checkout -b edison1.1 edison-6.0

(confusing versions... I think that tag should really be poky-6.0)

-M=


