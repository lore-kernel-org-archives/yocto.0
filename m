Return-Path: <winfried.dobbe@xmsnet.nl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 73416E0045D; Fri, 14 Oct 2016 11:33:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [213.197.30.124 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp-1.concepts.nl (smtp-1.concepts.nl [213.197.30.124])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 016EAE00444
	for <yocto@yoctoproject.org>; Fri, 14 Oct 2016 11:33:47 -0700 (PDT)
Received: from [2001:838:2:1::30:241] (helo=webmail.xmsnet.nl)
	by smtp-1.concepts.nl with esmtp (Exim 4.80.1)
	(envelope-from <winfried.dobbe@xmsnet.nl>)
	id 1bv7Ia-000C6A-Ff; Fri, 14 Oct 2016 20:33:40 +0200
MIME-Version: 1.0
Date: Fri, 14 Oct 2016 20:34:40 +0200
From: winfried.dobbe@xmsnet.nl
To: "Bystricky, Juro" <juro.bystricky@intel.com>, yocto@yoctoproject.org
Mail-Reply-To: winfried.dobbe@xmsnet.nl
In-Reply-To: <6E51916E4A1F32428260031F4C7CD2B61189A70C@ORSMSX112.amr.corp.intel.com>
References: <f419ba0dedc9dd5e42222c811d75f486@xmsnet.nl>
	<6E51916E4A1F32428260031F4C7CD2B61189A70C@ORSMSX112.amr.corp.intel.com>
Message-ID: <23c205ffb395310e7bb1c581cfe40df8@xmsnet.nl>
X-Sender: winfried.dobbe@xmsnet.nl
User-Agent: Roundcube Webmail/1.0.3
X-Concepts-MailScanner-Information: Please contact abuse@concepts.nl for more
	information
X-Concepts-MailScanner-ID: 1bv7Ia-000C6A-Ff
X-Concepts-MailScanner: Found to be clean
X-Concepts-MailScanner-SpamCheck: 
X-Concepts-MailScanner-From: winfried.dobbe@xmsnet.nl
Subject: Re: [meta-mingw] Patch needed to let linker find lto plugin
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: winfried.dobbe@xmsnet.nl
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 14 Oct 2016 18:33:49 -0000
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit

Hi Juro,

My Yocto environment is for the Congatec QMX6 SoM that is built around a 
quadcore i.MX6.
I use the Yocto layers from the Congatec repository 
(https://git.congatec.com/public), which includes the meta-fsl-arm and 
meta-fsl-arm-extra layers.

My bblayers.conf is:

BBLAYERS = " \
   ${BSPDIR}/sources/poky/meta \
   ${BSPDIR}/sources/poky/meta-poky \
   \
   ${BSPDIR}/sources/meta-openembedded/meta-oe \
   ${BSPDIR}/sources/meta-openembedded/meta-multimedia \
   ${BSPDIR}/sources/meta-openembedded/meta-python \
   ${BSPDIR}/sources/meta-openembedded/meta-networking \
   \
   ${BSPDIR}/sources/meta-fsl-arm \
   ${BSPDIR}/sources/meta-fsl-arm-extra \
   ${BSPDIR}/sources/meta-fsl-demos \
   \
   ${BSPDIR}/sources/meta-mingw \
   \
   ${BSPDIR}/sources/meta-peek \
   ${BSPDIR}/sources/meta-peek-ecng \
"

The image I normally build (peek-image-ecng-acu-default) is based upon 
the core-image-full-cmdline image.

I built the MinGW SDK by adding SDKMACHINE="x86_64-mingw32" to my 
local.conf and typing the command "bitbake peek-image-ecng-acu-default 
-c populate_sdk".

I attended the Yocto developer day in Berlin last week. When I showed 
the MinGW linker LTO plugin error to Mark Hatle, he suggested applying 
his patch.

best regards,

Winfried


Bystricky, Juro schreef op 14.10.2016 20:04:
> Could you please elaborate on what do you mean by "built it as-is".
> I tested the meta layer with some cases I considered typical
> or most common. (I think I enumerated them in my original
> message). Apparently I missed one.
> 
> Thanks
> 
> Juro
> 
> 
>> -----Original Message-----
>> From: Winfried [mailto:winfried_mb2@xmsnet.nl]
>> Sent: Friday, October 14, 2016 10:26 AM
>> To: yocto@yoctoproject.org
>> Cc: Bystricky, Juro <juro.bystricky@intel.com>
>> Subject: [meta-mingw] Patch needed to let linker find lto plugin
>> 
>> Recently the meta-mingw layer was updated to krogoth by Juro 
>> Bystricky.
>> Thanks !
>> However when I build it as-is, the linker fails because it can't load
>> the lto plugin.
>> 
>> After applying commit a06e473590207f72b11d273a09de2c8a889c381e from
>> meta-mingw-contrib (by Mark Hatle), the error disappeared.
>> 
>> See:
>> http://git.yoctoproject.org/cgit/cgit.cgi/meta-mingw-
>> contrib/commit/?h=mgh/jetho/meta-
>> mingw&id=a06e473590207f72b11d273a09de2c8a889c381e
>> 
>> regards,
>> W. Dobbe

