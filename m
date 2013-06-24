Return-Path: <philip@balister.org>
Received: from sanddollar.geekisp.com (sanddollar.geekisp.com
	[216.168.135.167])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 3E6F8E01403
	for <yocto@yoctoproject.org>; Mon, 24 Jun 2013 09:55:44 -0700 (PDT)
Received: (qmail 12353 invoked by uid 1003); 24 Jun 2013 16:31:29 -0000
Received: from unknown (HELO ?192.168.1.122?) (philip@opensdr.com@71.171.20.82)
	by mail.geekisp.com with (DHE-RSA-AES256-SHA encrypted) SMTP;
	24 Jun 2013 16:31:28 -0000
Message-ID: <51C87A0C.1050003@balister.org>
Date: Mon, 24 Jun 2013 12:55:40 -0400
From: Philip Balister <philip@balister.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130514 Thunderbird/17.0.6
MIME-Version: 1.0
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB123797FF5130F@ORSMSX101.amr.corp.intel.com>
	<51C8466F.8040808@balister.org>
	<41DEA4B02DBDEF40A0F3B6D0DDB123797FF514AE@ORSMSX101.amr.corp.intel.com>
	<alpine.DEB.2.02.1306241046210.24762@oneiric>
	<CAJTo0Lb8mXhsma_8XvWp2B68QQ9tcS6PVGj9QWqMENgeCt8h5g@mail.gmail.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB123797FF514E7@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB123797FF514E7@ORSMSX101.amr.corp.intel.com>
X-Enigmail-Version: 1.5.1
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Documenting YP Development Environment in more detail - user configuration
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
X-List-Received-Date: Mon, 24 Jun 2013 16:55:45 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 06/24/2013 11:08 AM, Rifenbark, Scott M wrote:
> My figure is for Yocto Project documentation so I am going to show that oe-init-build-env gets information from meta-yocto.  I understand that OE-Core sample files are in "meta".  There is a single oe-init-build-env script and it looks in one of two places.

Actually, the script is in two places, the root level of a poky checkout
and in the oe-core directory.

Explaining how poky is built up from oe-core + meta-yocto +
meta-yocto-bsp + some other stuff would be really helpful in reducing
confusion over what all the pieces are and where they come from.

Philip

> 
> Scott
> 
>> -----Original Message-----
>> From: Burton, Ross [mailto:ross.burton@intel.com]
>> Sent: Monday, June 24, 2013 7:57 AM
>> To: Robert P. J. Day
>> Cc: Rifenbark, Scott M; yocto@yoctoproject.org
>> Subject: Re: [yocto] Documenting YP Development Environment in more
>> detail - user configuration
>>
>> On 24 June 2013 15:47, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
>>> On Mon, 24 Jun 2013, Rifenbark, Scott M wrote:
>>>
>>>> What I was trying to convey here is that oe-init-build-env draws on
>>>> some files in the meta-yocto layer.  The script oe-init-build-env is
>>>> in the poky repository (or refered to as "Source Directory" in the
>>>> documentation).  The sample files are in the meta-yocto layer.  I
>>>> thought the meta-yocto layer was needed... maybe I am wrong.  Can I
>>>> get more clarification on this?
>>>
>>>   i regularly build images without any "*yocto*"-named layer, unless
>>> i'm misunderstanding the issue here.
>>
>> meta-yocto is what makes Poky Poky, otherwise it would be just oe-core
>> + bitbake.  oe-init-build-env looks for sample files in $TEMPLATECONF,
>> which is one of the things that get munged as
>> bitbake+oe-core+meta-yocto becomes poky.
>>
>> Ross
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
> 
> 

