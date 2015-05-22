Return-Path: <J.Spriggs@raylase.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 173A8E009D9; Fri, 22 May 2015 04:52:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.raylase.de (mail.raylase.de [217.6.128.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5AB81E00974
	for <yocto@yoctoproject.org>; Fri, 22 May 2015 04:52:55 -0700 (PDT)
Received: from mail.raylase.de (127.0.0.1) id hbsc9g0171s8 for
	<yocto@yoctoproject.org>;
	Fri, 22 May 2015 13:52:55 +0200 (envelope-from <J.Spriggs@raylase.de>)
Received: from EXCHANGE-A.raylase.de ([192.168.1.16])
	by mail.raylase.de (RAYLASE AG)
	with ESMTPS (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256/256)
	id 201505221152530045288; Fri, 22 May 2015 13:52:53 +0200
Received: from EXCHANGE-B.raylase.de (192.168.2.12) by EXCHANGE-A.raylase.de
	(192.168.1.16) with Microsoft SMTP Server (TLS) id 14.3.224.2;
	Fri, 22 May 2015 13:52:52 +0200
Received: from EXCHANGE-B.raylase.de ([fe80::3144:5b1b:13e0:ad49]) by
	EXCHANGE-B.raylase.de ([fe80::3144:5b1b:13e0:ad49%14]) with mapi id
	14.03.0224.002; Fri, 22 May 2015 13:52:52 +0200
From: "Spriggs, Jim" <J.Spriggs@raylase.de>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] How to debug a custom image creation script?
Thread-Index: AdCUaXWqeq+R2OBlQcmfkU4eoJKmCv//7RaA//+9aXA=
Date: Fri, 22 May 2015 11:52:51 +0000
Message-ID: <2238EDC6081C944E97E4EE915AE5CBEC52EBBB40@EXCHANGE-B.raylase.de>
References: <2238EDC6081C944E97E4EE915AE5CBEC52EBBABA@EXCHANGE-B.raylase.de>
	<2039964.hlcGcaqj34@peggleto-mobl.ger.corp.intel.com>
In-Reply-To: <2039964.hlcGcaqj34@peggleto-mobl.ger.corp.intel.com>
Accept-Language: en-GB, de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.2.104]
MIME-Version: 1.0
X-Mlf-Version: 8.0.7.3275
X-Mlf-UniqueId: o201505221152530045288
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: Re: How to debug a custom image creation script?
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
X-List-Received-Date: Fri, 22 May 2015 11:52:59 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Paul,
Rodger, thanks.

Strangely, log.do_rootfs says:

        NOTE: The image creation groups are: [['ext3', 'tar'], ['sdcard']]
and
        NOTE: Running image creation script for  sdcard:   .../tmp/work/mym=
achine-poky-linux-gnuabi/my-image/1.0-r0/temp/create_image.sdcard ...
and
        NOTE: Creating symlinks for  sdcard image ...

But nothing between the last two, as if the output from "create_image.sdcar=
d" is not being captured after all.

That script is present, and appears to contain everything from my bbclass.
The xxxx.rootfs.sdcard is being created in deploy/images, albeit with bogus=
 contents (which is why I want to debug the script), so I have every reason=
 to think that img_creation_func() is indeed being called.
However, not even a simple "echo" at the start of img_creation_func() leave=
s anything visible in log.do_rootfs.

I guess either I'm still doing something wrong, or the problem with "bbnote=
", etc., is not just confined to the UI.

I'm using dizzy, btw.

Greets,
--
jim

-----Urspr=FCngliche Nachricht-----
Von: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
Gesendet: Freitag, 22. Mai 2015 11:22
An: Spriggs, Jim
Cc: yocto@yoctoproject.org
Betreff: Re: [yocto] How to debug a custom image creation script?

Hi Jim,

On Friday 22 May 2015 08:47:23 Spriggs, Jim wrote:
> I'd like to have my custom layer generate an sdcard image, so I've
> implemented a classes/image_types_xxxxx.bbclass. This contains,
> amongst other things, the (bash) function generate_xxxxx_sdcard().
> Being a na=EFve n00b, I assumed that I could just scatter "bbnote"s,
> "echo"s, or even "set -x" around inside the function to my heart's
> content, and would be able to see the output "somewhere".
> Trouble is, I can't find it anywhere!
>
> So what is the best/approved/obvious way to get debug traces out of a
> bbclass function?
>
> If I am already doing the Right Thing, where should I be looking for
> the output?

You should see output printed here in log.do_rootfs for the image you are b=
uilding. In case you're unaware, you can find this in the directory pointed=
 to by the T variable for the recipe, the following command will show this =
to you:

bitbake -e your-imagename | grep ^T=3D

As an aside, we do want to change the bbwarn/bbnote/bberror etc. shell func=
tions to output to the UI just like the python equivalents do, it's a known=
 issue that they do not. There's a bug open for that (assigned to me as it =
happens):

  https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5275

I should really get that one sorted out for the next release.

Cheers,
Paul

--

Paul Eggleton
Intel Open Source Technology Centre

________________________________

RAYLASE AG
Argelsrieder Feld 2+4
82234 Wessling
Germany
Tel.: +49-(0)8153/88 98-0
Fax: +49-(0)8153/88 98-10
http://www.raylase.de

District Court Munich, HRB 131450

Board: Peter von Jan (CEO)

Supervisory Board: Dr. Ulrich Lohmann (Chairman)


Diese E-Mail enth=E4lt vertrauliche und/oder rechtlich gesch=FCtzte Informa=
tionen. Wenn Sie nicht der richtige Adressat sind oder diese E-Mail irrt=FC=
mlich erhalten haben, informieren Sie bitte sofort den Absender und vernich=
ten Sie diese Mail. Das unerlaubte Kopieren sowie die unbefugte Weitergabe =
dieser Mail ist nicht gestattet.

This e-mail may contain confidential and/or privileged information. If you =
are not the intended recipient (or have received this e-mail in error) plea=
se notify the sender immediately and destroy this e-mail. Any unauthorized =
copying, disclosure or distribution of the material in this e-mail is stric=
tly forbidden.

