Return-Path: <jose.a.lamego@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EE4A9E009F4; Wed, 18 Jan 2017 14:47:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9BCBE009EA
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2017 14:47:08 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 18 Jan 2017 14:47:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,250,1477983600"; 
	d="asc'?scan'208";a="1114692657"
Received: from jalamego-mobl2.zpn.intel.com (HELO [10.219.5.142])
	([10.219.5.142])
	by fmsmga002.fm.intel.com with ESMTP; 18 Jan 2017 14:47:07 -0800
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <70d81353-d5f9-6d36-ed40-7b5eedf1ad26@linux.intel.com>
	<ce28562f-28dd-3b65-8b72-5626e429091e@linux.intel.com>
From: Jose Lamego <jose.a.lamego@linux.intel.com>
Message-ID: <7e48c4f5-78cd-244b-e039-fd65397b9f17@linux.intel.com>
Date: Wed, 18 Jan 2017 16:47:11 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.5.1
MIME-Version: 1.0
In-Reply-To: <ce28562f-28dd-3b65-8b72-5626e429091e@linux.intel.com>
Subject: Re: [OE-core] [Openembedded-architecture] Patchwork and incoming patch testing
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
X-List-Received-Date: Wed, 18 Jan 2017 22:47:13 -0000
X-Groupsio-MsgNum: 33928
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="u1dNAhSQq1V42tTtddDEqLxWaLtAIH0PM"

--u1dNAhSQq1V42tTtddDEqLxWaLtAIH0PM
Content-Type: multipart/mixed; boundary="63ID2MugwJ8AIDGddkpEa0nk6rodkRE6L";
 protected-headers="v1"
From: Jose Lamego <jose.a.lamego@linux.intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <7e48c4f5-78cd-244b-e039-fd65397b9f17@linux.intel.com>
Subject: Re: [OE-core] [yocto] [Openembedded-architecture] Patchwork and
 incoming patch testing
References: <70d81353-d5f9-6d36-ed40-7b5eedf1ad26@linux.intel.com>
 <ce28562f-28dd-3b65-8b72-5626e429091e@linux.intel.com>
In-Reply-To: <ce28562f-28dd-3b65-8b72-5626e429091e@linux.intel.com>

--63ID2MugwJ8AIDGddkpEa0nk6rodkRE6L
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

I was replying to the wrong mailing list. Sorry for the spam. :(

On 01/18/2017 04:40 PM, Jose Lamego wrote:
>=20
> On 01/18/2017 08:52 AM, Leonardo Sandoval wrote:
>> + Jose Lamego
>>
>>
>> Jose is doing recent work on the patchwork UI, perhaps there are alrea=
dy
>> bugs for the items you are asking.
>>
>>
>> On 01/18/2017 02:40 AM, Jussi Kukkonen wrote:
>>> This looks great, thanks.
>>>
>>> On 17 January 2017 at 20:05, Paul Eggleton
>>> <paul.eggleton@linux.intel.com <mailto:paul.eggleton@linux.intel.com>=
>
>>> wrote:
>>>
>>>     In any event we are now finally in the
>>>     position where our patchwork instance can be relied upon to
>>>     collect emails,
>>>     and the UI is much improved. This should give us a bit more
>>>     visibility into
>>>     where patches are at in the process, although we are still workin=
g
>>>     on a few
>>>     places where patch series status needs to be updated (e.g. when a=

>>>     patch goes
>>>     into testing).
>>>
>>>
>>> What's the plan for these status updates -- is the idea that you go t=
o
>>> patchwork UI to see the state of a specific patch set?
>>> Or maybe a reply to either patch sender or even the ML?
>>>
There is a request to enable email notifications to submitter for patch
status changes in the future:
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7684

The idea is that users should have the option to use what they prefer:
either the email notifications, or the patchwork web interface.
>=20
>>>     On top of patchwork we have built a simple smoke-testing framewor=
k
>>>     called
>>>     "patchtest" [5] along with a suite of corresponding tests for OE
>>>     [6]. These
>>>     tests are fairly simplistic at this point but check the basics
>>>     such as whether
>>>     a patch has been properly signed off, etc. We should soon start
>>>     seeing replies
>>>     sent to the mailing list and to submitters with results if there
>>>     are any
>>>     failures, saving us from noticing and pointing out some of the
>>>     more obvious
>>>     classes of mistakes.
>>>
>>>
>>>  Is there a reason for patchwork only showing "success" or "failure"
>>> in the web ui, instead of linking to test results at least in in the
>>> failure case?
>>
>> Jussi, that is a good idea. Right now we need to click into the series=
,
>> then into the patches and then one can see the patch test results,
>> obviously, not the best way.
>>
>>>
>>>
>>>
>>>  - Jussi
>>>

--=20
Jose Lamego | OTC Embedded Platforms & Tools | GDC


--63ID2MugwJ8AIDGddkpEa0nk6rodkRE6L--

--u1dNAhSQq1V42tTtddDEqLxWaLtAIH0PM
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQEcBAEBAgAGBQJYf/BvAAoJEFJAtowlSEbnd5MH/2er9q+5Q/JujTR4sCh3Uh1m
8XdWoD7XQme6Mlez7GAL7odHdpH3Ak0zCwTHO/TlPihLIo0VqafWmMrHbUJJ9jRa
qFQx1D4o71835g1YDjsnC4Vg+L4jtmCvBfR97YPT/1HD3HIAs1hOSP1rVGZ1nyKq
4O1pjhTHMuxxiRuzAo1V1PWJse3n22w+r39+IBaJjg8AtQr8qCrI3G7xuwwfmX8c
Q+Xmuz4l9+yq4pdxfPXyamhSiCNnfMu3zWhHBHnAeHYT8cHVQkMEjxhZx7+1n1uq
J1MWfjeCHs8QdjsQQjhQ/nxeOKDmQzhwJoIBa2gweQdnV6ObmjCH2ctKOAh10Zk=
=Wav5
-----END PGP SIGNATURE-----

--u1dNAhSQq1V42tTtddDEqLxWaLtAIH0PM--
