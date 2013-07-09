Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B47F2E00715
	for <yocto@yoctoproject.org>; Mon,  8 Jul 2013 18:37:01 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r691axUG029766
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 8 Jul 2013 18:36:59 -0700 (PDT)
Received: from [128.224.23.65] (128.224.23.65) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.342.3;
	Mon, 8 Jul 2013 18:36:59 -0700
Message-ID: <51DB693A.7010805@windriver.com>
Date: Mon, 8 Jul 2013 21:36:58 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130510 Thunderbird/17.0.6
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB123797FF5182B@ORSMSX101.amr.corp.intel.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB123797FF52416@ORSMSX101.amr.corp.intel.com>
	<23FC58C0-D2D3-4977-A04E-3C9E14C9EBA9@gmail.com>
	<68667435.cRfdglprjW@helios>
In-Reply-To: <68667435.cRfdglprjW@helios>
Cc: yocto@yoctoproject.org
Subject: Re: Layer input
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
X-List-Received-Date: Tue, 09 Jul 2013 01:37:01 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-07-08 11:16 AM, Paul Eggleton wrote:
> On Friday 28 June 2013 14:36:48 Khem Raj wrote:
>> On Jun 28, 2013, at 4:22 AM, "Rifenbark, Scott M"
>> <scott.m.rifenbark@intel.com> wrote:
>>> I count eight meta-* layers in the YP repositories that don't exist in the
>>> OE area.  I understand what you are saying though and I can word it that
>>> way to dampen the existence of the "many" differences :)
>>
>> hmm may be they should be added to layer index. at least the ones which are
>> still maintained.
>
> This is down to me, I've been keeping the layer index up-to-date for the
> layers on yoctoproject.org. Listing the ones that aren't there, with comments
> as to why not:
>
> experimental/meta-darwin
>      - ancient, unmaintained, no conf/layer.conf
> experimental/meta-m2
>      - ancient, unmaintained
> experimental/meta-maemo
>      - ancient, unmaintained, no conf/layer.conf
> experimental/meta-trusted
>      - not actively maintained
> experimental/meta-x32
>      - ancient, we should probably just delete this
> meta-dlna
>      - replaced by collaboration with meta-guacamayo
> meta-extras
>      - not usable as a layer, most recipes unbuildable; I'm slowly whittling it
>        down as bits of it reappear in OE layers until one day hopefully it'll
>        become empty
> meta-intel-contrib
>      - contrib repo for meta-intel
> meta-jarvis
>      - joke layer
> meta-meson
>      - (probably could add)
> meta-meson-bsp
>      - (probably could add)
> meta-minnow
>      - (was waiting for hardware availability)
> meta-yocto-kernel-extras
>      - now submitted to the layer index
> meta-zynq
>      - status not entirely clear, but seems to have been superseded?

Superseded. The xilinx guys have linux-yocto support in hand in their
layers no, so we can mark this as dead.

Bruce

>
> Cheers,
> Paul
>


