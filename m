Return-Path: <B29882@freescale.com>
Received: from ch1outboundpool.messaging.microsoft.com
	(ch1ehsobe005.messaging.microsoft.com [216.32.181.185])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82F7DE011C0
	for <yocto@yoctoproject.org>; Mon,  1 Oct 2012 07:41:59 -0700 (PDT)
Received: from mail69-ch1-R.bigfish.com (10.43.68.245) by
	CH1EHSOBE001.bigfish.com (10.43.70.51) with Microsoft SMTP Server id
	14.1.225.23; Mon, 1 Oct 2012 14:41:58 +0000
Received: from mail69-ch1 (localhost [127.0.0.1])	by mail69-ch1-R.bigfish.com
	(Postfix) with ESMTP id E7F301C00DF;
	Mon,  1 Oct 2012 14:41:58 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -2
X-BigFish: VS-2(zz98dI9371I1432Izz1202h1d1ah1d2ahzz8275bhz2dh2a8h668h839h8e2h8e3hd25hf0ah107ah10d2h1288h12a5h12a9h12bdh137ah13b6hbe9i1155h)
Received: from mail69-ch1 (localhost.localdomain [127.0.0.1]) by mail69-ch1
	(MessageSwitch) id 1349102517717131_15461;
	Mon,  1 Oct 2012 14:41:57 +0000 (UTC)
Received: from CH1EHSMHS024.bigfish.com (snatpool1.int.messaging.microsoft.com
	[10.43.68.244])	by mail69-ch1.bigfish.com (Postfix) with ESMTP id
	A83A52E0049;	Mon,  1 Oct 2012 14:41:57 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by CH1EHSMHS024.bigfish.com
	(10.43.70.24) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Mon, 1 Oct 2012 14:41:57 +0000
Received: from 039-SN1MPN1-001.039d.mgd.msft.net ([169.254.1.124]) by
	039-SN1MMR1-004.039d.mgd.msft.net ([::1]) with mapi id 14.02.0309.003;
	Mon, 1 Oct 2012 09:41:56 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] Supported host distro updates
Thread-Index: AQHNmodZwUZBrkGLt06hx2UIHEjJspekdFMAgAAWsYCAAFgFgP//rZyA
Date: Mon, 1 Oct 2012 14:41:55 +0000
Message-ID: <70CC66F5C30A414DADDA6973E4CA391A6C4D09@039-SN1MPN1-001.039d.mgd.msft.net>
References: <1716058.TZM8ukYCTx@helios> <2929338.Cetim2KrZW@helios>
	<70CC66F5C30A414DADDA6973E4CA391A6C4BCD@039-SN1MPN1-001.039d.mgd.msft.net>
	<2437778.YJDW3BfGOX@helios>
In-Reply-To: <2437778.YJDW3BfGOX@helios>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [70.112.201.132]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: McClintock Matthew-B29882 <B29882@freescale.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Supported host distro updates
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
X-List-Received-Date: Mon, 01 Oct 2012 14:41:59 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <BF4EAC866CB6D84E9CA00499AA19C643@mgd.freescale.com>
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 1, 2012 at 9:36 AM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> On Monday 01 October 2012 14:21:47 McClintock Matthew-B29882 wrote:
>> On Mon, Oct 1, 2012 at 3:00 AM, Paul Eggleton
>>
>> <paul.eggleton@linux.intel.com> wrote:
>> > On Monday 24 September 2012 19:03:57 McClintock Matthew-B29882 wrote:
>> >> CentOS release 5.8 (Final)
>> >
>> > OK, so do we keep 5.6 / 5.7 or remove them in favour of 5.8?
>>
>> I don't think you can... each of these present different issues I've
>> found and fixed along the way.
>
> OK, I'll leave them in for the moment.
>
>> >> Fedora release 13 (Goddard)
>> >
>> > I think this is probably too old for us to be declaring support for, s=
ince
>> > it has been unsupported upstream for some time now.
>>
>> This has been working for me for a while (with a lot fewer issues to
>> fix than CentOS 5.x) unless I'm missing something, I don't think it's
>> too old.
>
> I consider it too old because of its upstream support status, but also be=
cause
> broadly we commit to supporting N and N-1 (and usually N+1) where N is th=
e
> most recent release of the distribution. Fedora 13 would be N-4.
>
> Not having Fedora 13 (or any other distro or distro version, for that mat=
ter)
> in this list does not mean that you can't continue to use it, nor does it
> necessarily mean that we won't take patches to fix support for it should =
it
> break.

Perhaps a better solution here is to have two lists. An officially
tested and supported along with a known not to work list.

-M=


