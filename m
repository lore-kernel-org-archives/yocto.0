Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C203BE01482
	for <yocto@yoctoproject.org>; Thu, 27 Jun 2013 23:14:00 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 27 Jun 2013 23:13:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,957,1363158000"; d="scan'208";a="323770069"
Received: from orsmsx101.amr.corp.intel.com ([10.22.225.128])
	by azsmga001.ch.intel.com with ESMTP; 27 Jun 2013 23:13:58 -0700
Received: from orsmsx157.amr.corp.intel.com (10.22.240.23) by
	ORSMSX101.amr.corp.intel.com (10.22.225.128) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Thu, 27 Jun 2013 23:13:58 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.181]) by
	ORSMSX157.amr.corp.intel.com ([169.254.9.23]) with mapi id
	14.03.0123.003; Thu, 27 Jun 2013 23:13:58 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Philip Balister <philip@balister.org>
Thread-Topic: [yocto] Layer input
Thread-Index: Ac5xoIa8qgTrlOjLRMKaa4xXGNNS/AAaONQAAD/zVxAAKsL2AAADHtMA
Date: Fri, 28 Jun 2013 06:13:57 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB123797FF521C9@ORSMSX101.amr.corp.intel.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB123797FF5182B@ORSMSX101.amr.corp.intel.com>
	<CA+QkY1BKJqnLcbJq786d3LjA6D7gDLLQifccMA4m9m0cKOXj+g@mail.gmail.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB123797FF51E45@ORSMSX101.amr.corp.intel.com>
	<51CCA852.5080305@balister.org>
In-Reply-To: <51CCA852.5080305@balister.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Fri, 28 Jun 2013 06:14:01 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Philip,=20

They do all play together.  Using the phrasing "exclusive to" was probably =
not the best choice of words here.  Initially, my understanding was that th=
e layers in the Yocto Metadata Layers section of the YP Source Repositories=
 was a subset of the layers listed in the OpenEmbedded metadata index.  But=
, after looking at them again, I discovered that not all layers found in th=
e Yocto list actually appear in the OE list. So, I need some more clarifica=
tion on just exactly what each of these areas contain.  I was told that the=
 YP area is open to any layer that is related to YP and that some layers in=
 there are provided and maintained by people outside of the YP team (e.g. m=
eta-ti, meta-mentor, etc.).  Some of these do also appear in the OE index. =
 However, there are some in the YP area that do not appear in the OE list (=
e.g. poky-extras, meta-baryon, meta-dlna, etc).

So, I need some more clarification on exactly how these two indexes relate.=
  Once I get that I will update that text and the explanation that goes wit=
h the figure that ultimately finds its way into the documentation will me a=
ccurate.

Also, I think it would be useful to actually include a layer block in the f=
inal figure that represented the OE index as well.  Right now, that is miss=
ing.  So that will be added as well.

Thanks for the input Philip.
=20

>-----Original Message-----
>From: Philip Balister [mailto:philip@balister.org]
>Sent: Thursday, June 27, 2013 2:02 PM
>To: Rifenbark, Scott M
>Cc: Jerrod Peach; Bruce Ashfield; yocto@yoctoproject.org; Paul Eggleton
>Subject: Re: [yocto] Layer input
>
>On 06/27/2013 03:41 AM, Rifenbark, Scott M wrote:
>> Hi,
>>
>> I have tweaked this figure some based on Bruce and Jerrod's input.  To
>help me figure out some of the basics, I ran the yocto-layer and bsp-
>layer scripts to create a general and BSP layer, respectively.  Please
>look over the contents of these layers and comment.  General comments on
>the whole concept of how I am presenting the layers are welcome along
>with any other observations.
>
>I'm confused by the last line of test about Yocto project layers and
>layers exclusive to oe-core. All layers should play together, so the
>concept of layers exclusive to oe-core does not make sense to me.
>
>Philip
>
>>
>> Thanks,
>> Scott
>>
>> From: Jerrod Peach [mailto:peachj@lexmark.com]
>> Sent: Tuesday, June 25, 2013 11:07 AM
>> To: Rifenbark, Scott M
>> Cc: yocto@yoctoproject.org; Paul Eggleton
>> Subject: Re: [yocto] Layer input
>>
>> Scott,
>>
>>   *   Distro Layer
>>
>>      *   I'm unclear on what <name> is.  Is that supposed to be
><distro>?  <recipe>?  It probably shouldn't just be <name>, should it?
>>
>>   *   Software Layer
>>
>>      *   Should COPYING.MIT just be COPYING to be more generically
>applicable?
>>      *   conf/<layer_name>.conf should be just layer.conf, right?
>>
>>   *   BSP Layer
>>
>>      *   COPYING.MIT file again.
>>      *   machine/<name>.conf should probably be
>machine/<machine*>.conf.  You can probably drop the non-asterisk
>version, since an asterisk implies, "There might be more stuff, there
>might not."
>>      *   recipes-bsp/formfactor shouldn't also have another formfactor
>directory, should it?  Or is the "files" directory in 1.4 replaced with
>another formfactor-named directory?  Also, <name> should be <machine>
>again.
>>      *   What's everything from recipes-core down?  I can buy recipes-
>kernel being in a bsp, but are any other directories really necessary?
>> Kind regards,
>>
>> Jerrod
>>
>> On Tue, Jun 25, 2013 at 8:35 AM, Rifenbark, Scott M
><scott.m.rifenbark@intel.com<mailto:scott.m.rifenbark@intel.com>> wrote:
>> Hi,
>>
>> This next illustration attempting to dive deeper in the YP Development
>Process takes the remaining left-side input from that figure in the
>Quick Start (metadata, Machine, and Policy).  Note that when the
>original figure was created that appears in the QS, the layer stuff had
>not yet been established.  This figure I am attaching is rough.  I am
>unsure as to the contents of these layers.  Right now it is detailed but
>with generic names.  The idea is that individual layers are preferred to
>do things such as provide software, configure policy, and configure
>machines.  I am including some notes at the bottom of the figure that
>would not be part of the figure but might help to get across what I am
>trying to accomplish here.
>>
>> Any suggestions and feedback is really appreciated.
>>
>> Thanks,
>> Scott
>>
>> Scott Rifenbark
>> Intel Corporation
>> Yocto Project Documentation
>> 503.712.2702<tel:503.712.2702>
>> 503.341.0418<tel:503.341.0418> (cell)
>>
>>
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>>
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>

