Return-Path: <gary@mlbassoc.com>
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1BCC2E00348
	for <yocto@yoctoproject.org>; Wed, 19 Jun 2013 08:25:39 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id A409068A01B; Wed, 19 Jun 2013 16:25:37 +0100 (BST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	loki.analogue-micro-ltd.com
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.12.145] (unknown [192.168.12.145])
	by mail.analogue-micro.com (Postfix) with ESMTP id 4679768A019;
	Wed, 19 Jun 2013 16:25:36 +0100 (BST)
Message-ID: <51C1CD70.1090805@mlbassoc.com>
Date: Wed, 19 Jun 2013 16:25:36 +0100
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130510 Thunderbird/17.0.6
MIME-Version: 1.0
To: "Burton, Ross" <ross.burton@intel.com>
References: <51C1BA25.6080200@mlbassoc.com>
	<CAJTo0LZ5y1wXXh7wN04k+z=KUz79wjS=ESBBtVoYbJzNd7a0mg@mail.gmail.com>
	<51C1C2BA.9020505@mlbassoc.com>
	<CAJTo0LYBJaWeyqPdbwfouWES+MH3_MC_JqKdonm53N0m4fCOmA@mail.gmail.com>
In-Reply-To: <CAJTo0LYBJaWeyqPdbwfouWES+MH3_MC_JqKdonm53N0m4fCOmA@mail.gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Cross building question
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
X-List-Received-Date: Wed, 19 Jun 2013 15:25:40 -0000
X-Groupsio-MsgNum: 14475
Content-Type: multipart/mixed; boundary="------------030007020308000603020608"

--------------030007020308000603020608
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2013-06-19 15:52, Burton, Ross wrote:
> On 19 June 2013 15:39, Gary Thomas <gary@mlbassoc.com> wrote:
>> In the mean time, I faked that one and moved on and got the whole thing
>> to build :-)  Now I face this packaging issue:
>>    ERROR: QA Issue: non -dev/-dbg/-nativesdk package contains symlink .so:
>> amanda path
>> '/work/ppce500v2-amltd-linux-gnuspe/amanda/3.3.3-r0/packages-split/amanda/usr/lib/amanda/libamar.so'
>>
>> Any clues how I fix this?
>
> Is libamar actually a module, and not a library? (albeit done badly,
> as it's a symlink)  If so, then INSANE_SKIP_${PN} += "dev-so" is the
> right way to skip that test.  This may be a bug in amanda which
> everyone else has been ignoring.

Here's what I have:

   [gary@thor synology_poky]$ file tmp/work/ppce500v2-amltd-linux-gnuspe/amanda/3.3.3-r0/packages-split/amanda/usr/lib/amanda/libamar.so
   tmp/work/ppce500v2-amltd-linux-gnuspe/amanda/3.3.3-r0/packages-split/amanda/usr/lib/amanda/libamar.so: symbolic link to `libamar-3.3.3.so'
   [gary@thor synology_poky]$ file tmp/work/ppce500v2-amltd-linux-gnuspe/amanda/3.3.3-r0/packages-split/amanda/usr/lib/amanda/libamar-3.3.3.so
   tmp/work/ppce500v2-amltd-linux-gnuspe/amanda/3.3.3-r0/packages-split/amanda/usr/lib/amanda/libamar-3.3.3.so: ELF 32-bit MSB shared object, PowerPC or cisco 4500, version 1 
(SYSV), dynamically linked, BuildID[sha1]=0xef5c0cd4d0ac1abfb9a29b05ca6189d5a1b745ae, stripped

Following your advice, I added these lines to my recipe:

   FILES_${PN} += "/usr/lib \
                   /usr/local \
   "
   INSANE_SKIP_${PN} += "dev-so"

Now I get errors like these (they might have been there before):
   ERROR: QA Issue: non debug package contains .debug directory: amanda path 
/work/ppce500v2-amltd-linux-gnuspe/amanda/3.3.3-r0/packages-split/amanda/usr/local/share/perl5/auto/Amanda/Xfer/.debug/libXfer.so
   ERROR: QA Issue: non debug package contains .debug directory: amanda path 
/work/ppce500v2-amltd-linux-gnuspe/amanda/3.3.3-r0/packages-split/amanda/usr/lib/amanda/amanda/.debug/chunker

My recipe (still a work in progress) is attached in case I've done something
really stupid...

>
>> Query: I've built this now using a cross build (normal Yocto style) and
>> native using a Yocto created SDK.  These _should_ be the same tools, no?
>> I ask because I had a few gotchas - things that were different between
>> the two environments.  If I track them down, are they of any interest?
>
> I've not actually used the SDK but they should be mostly the same,
> yes.  Differences are bound to be of interest so please do report
> them.

I'll get them all collected and report back.

Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

--------------030007020308000603020608
Content-Type: text/plain; charset=UTF-8;
 name="amanda_3.3.3.bb"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename="amanda_3.3.3.bb"

REVTQ1JJUFRJT04gPSAiIEFtYW5kYSwgVGhlIEFkdmFuY2VkIE1hcnlsYW5kIEF1dG9tYXRpYyBO
ZXR3b3JrIERpc2sgQXJjaGl2ZXIiCkhPTUVQQUdFID0gImh0dHA6Ly93d3cuYW1hbmRhLm9yZy8i
ClNFQ1RJT04gPSAidXRpbGl0aWVzIgpQUklPUklUWSA9ICJvcHRpb25hbCIKREVQRU5EUyA9ICJn
bGliLTIuMCBwZXJsIgpMSUNFTlNFID0gIkFtYW5kYSIKTElDX0ZJTEVTX0NIS1NVTSA9ICIgXAog
ICAgZmlsZTovL0NPUFlSSUdIVDttZDU9ZWEyY2IwNmE0ZDBhYzdkYTQ2ZTJhNDFlZGRmN2ZiYTIg
XAoiCgpTUkNfVVJJID0gImh0dHA6Ly9kb3dubG9hZHMuc291cmNlZm9yZ2UubmV0L3Byb2plY3Qv
YW1hbmRhL2FtYW5kYS1zdGFibGUvJHtQVn0vYW1hbmRhLSR7UFZ9LnRhci5neiBcCiAgICAgICAg
ICAiClNSQ19VUklbbWQ1c3VtXSA9ICIyYjljN2ZiYzAzMGQ3YzI0MjE5N2NjODM2N2U5YTZiOCIK
U1JDX1VSSVtzaGEyNTZzdW1dID0gImMzNmM5Y2Q2MWRjNjJhNzgyNGFiYjdiYTc0Y2M0YjA5NTI3
YmQ4MmE5MzBkNjkxY2YyMDdiNjBiNGJiMTViNzIiCgppbmhlcml0IGF1dG90b29scyBnZXR0ZXh0
CgpGSUxFU18ke1BOfSArPSAiL3Vzci9saWIgXAogICAgICAgICAgICAgICAgL3Vzci9sb2NhbCBc
CiIKSU5TQU5FX1NLSVBfJHtQTn0gKz0gImRldi1zbyIKCg==

--------------030007020308000603020608--
