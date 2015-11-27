Return-Path: <deepteriar@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 98D62E00BFF; Thu, 26 Nov 2015 22:55:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (deepteriar[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f181.google.com (mail-ig0-f181.google.com
	[209.85.213.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 482EBE00BF4
	for <yocto@yoctoproject.org>; Thu, 26 Nov 2015 22:55:15 -0800 (PST)
Received: by igcto18 with SMTP id to18so24404521igc.0
	for <yocto@yoctoproject.org>; Thu, 26 Nov 2015 22:55:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=6WkkBDDpjQC3iWjikJq4y1/8t/V1d7qUxELX+oy1WGw=;
	b=e2Xa3vDYhHFzkoSXrGNnWvgd1/aYFeyGhpc2BJNDnoo3kjxqOiDaQoLJcU5vZ0no6H
	C8x1K7X1L3m1nDIp69pYZBmb8WzxrSAPxTt55H2xAvXwT34rXew82/ems4ZNaKHQg00t
	/it6FVl5cPMCRihCLkUJckHDkZMGUjIv+LA0nL6ArHcUMOuDEpISGNZYBPeJkyOtKGzy
	ZqFkLLBpapyUMJaAycEGTCzzp60Xjbs/300NwyU80R65prw6Y1eIyj4Ue5W2qx7aWCEO
	+Xaex+WrkxylnXEMQW5iyfiQ6ixPnktSMaQRI8h/X02pjr7WIUSLffig2OnGVXfUncbp
	LdYw==
MIME-Version: 1.0
X-Received: by 10.50.128.70 with SMTP id nm6mr6943010igb.31.1448607315122;
	Thu, 26 Nov 2015 22:55:15 -0800 (PST)
Received: by 10.36.220.2 with HTTP; Thu, 26 Nov 2015 22:55:15 -0800 (PST)
In-Reply-To: <56570C02.4050709@windriver.com>
References: <CAM_pFj_cwoDAC30cBcPB1besMJwZuO=mh6E4-n8Q5=5=2j_VWg@mail.gmail.com>
	<56570C02.4050709@windriver.com>
Date: Fri, 27 Nov 2015 12:25:15 +0530
Message-ID: <CAM_pFj8cycNEx3vwds=d2nXo39Kmfqpn-XxwEjKS0v6yUfda_w@mail.gmail.com>
From: Deepika Teriar <deepteriar@gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: Copying the kernel in the poky directory
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
X-List-Received-Date: Fri, 27 Nov 2015 06:55:20 -0000
Content-Type: multipart/alternative; boundary=089e013a05ae6fe15c0525802c7f

--089e013a05ae6fe15c0525802c7f
Content-Type: text/plain; charset=UTF-8

Hi Bruce

It was not successful. Its giving me a fetcher failure.














*WARNING: Failed to fetch URL
ftp://ftp.debian.org/debian/pool/main/b/base-passwd/base-passwd_3.5.29.tar.gz
<ftp://ftp.debian.org/debian/pool/main/b/base-passwd/base-passwd_3.5.29.tar.gz>,
attempting MIRRORS if availableWARNING: Failed to fetch URL
git:///home/deepika/bbb/poky/kernel-3.14.29;protocol=file;bareclone=1;branch=standard/common-pc/base,meta;name=machine,meta,
attempting MIRRORS if availableERROR: Fetcher failure: Fetch command failed
with exit code 128, output:Cloning into bare repository
'/home/deepika/bbb/poky/build/downloads/git2/.home.deepika.bbb.poky.kernel-3.14.29'...error:
object directory
/home/deepika/bbb/poky/build/downloads/git2/git.yoctoproject.org.linux-yocto-3.14.git/objects
does not exist; check .git/objects/info/alternates.fatal: git upload-pack:
cannot find object dbe5b52e93ff114b2c0f5da6f6af91f52c18f2b8:fatal: The
remote end hung up unexpectedlyERROR: Function failed: Fetcher failure for
URL:
'git:///home/deepika/bbb/poky/kernel-3.14.29;protocol=file;bareclone=1;branch=standard/common-pc/base,meta;name=machine,meta'.
Unable to fetch URL from any source.ERROR: Logfile of failure stored in:
/home/deepika/bbb/poky/build/tmp/work/qemux86-poky-linux/linux-yocto/3.14.29+gitAUTOINC+6eddbf4787_f6aa7aaca8-r0/temp/log.do_fetch.26206ERROR:
Task 75
(/home/deepika/bbb/poky/meta/recipes-kernel/linux/linux-yocto_3.14.bb
<http://linux-yocto_3.14.bb>, do_fetch) failed with exit code '1'*
Can anyone help


On Thu, Nov 26, 2015 at 7:11 PM, Bruce Ashfield <
bruce.ashfield@windriver.com> wrote:

> On 15-11-26 02:39 AM, Deepika Teriar wrote:
>
>> Hi
>>
>> I am customizing yocto for beaglebone black
>> I do not want my kernel to get downloaded from the git after I clean the
>> build directory. So i have kept the linux-kernel directory with the name
>> kernel-3.14.29 in the poky directory.
>> And in the linux-yocto_3.14.bb <http://linux-yocto_3.14.bb> file i have
>> changed SRC_URI *from:*
>>
>> SRC_URI =
>> "git://
>> git.yoctoproject.org/linux-yocto-3.14.git;bareclone=1;branch=${KBRANCH},${KMETA};name=machine,meta
>> <http://git.yoctoproject.org/linux-yocto-3.14.git;bareclone=1;branch=$%7BKBRANCH%7D,$%7BKMETA%7D;name=machine,meta>
>> <
>> http://git.yoctoproject.org/linux-yocto-3.14.git;bareclone=1;branch=${KBRANCH},${KMETA};name=machine,meta
>> >"
>>
>> *to :*
>>
>> SRC_URI = "file://${COREBASE}/kernel-3.14.29"
>>
>> On compiling core-image-minimal I am getting the following error
>> *
>> ERROR: ExpansionError during parsing
>> /home/deepika/bbb/poky/meta/recipes-kernel/linux/linux-yocto_3.14.bb
>> <http://linux-yocto_3.14.bb>: Failure expanding variable do_patch:
>> ExpansionError: Failure expanding variable SRCPV, expression was
>> ${@bb.fetch2.get_srcrev(d)} which triggered exception FetchError:
>> Fetcher failure: SRCREV was used yet no valid SCM was found in SRC_URI
>>
>> *
>> Can any one tell me the error?
>>
>
> You still need the git protocol, the fetcher can't determine what to
> do with the SRCREV.
>
> Try:
>
> SRC_URI =
> "git://${COREBASE}/kernel-3.14.29;protocol=file;bareclone=1;branch=${KBRANCH},${KMETA};name=machine,meta"
>
> Bruce
>
>
>> Thanks
>> Deepika
>>
>>
>>
>>
>>
>

--089e013a05ae6fe15c0525802c7f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hi Bruce<br><br></div>It was not successful. Its=
 giving me a fetcher failure.<br><br><b>WARNING: Failed to fetch URL <a hre=
f=3D"ftp://ftp.debian.org/debian/pool/main/b/base-passwd/base-passwd_3.5.29=
.tar.gz">ftp://ftp.debian.org/debian/pool/main/b/base-passwd/base-passwd_3.=
5.29.tar.gz</a>, attempting MIRRORS if available<br>WARNING: Failed to fetc=
h URL git:///home/deepika/bbb/poky/kernel-3.14.29;protocol=3Dfile;bareclone=
=3D1;branch=3Dstandard/common-pc/base,meta;name=3Dmachine,meta, attempting =
MIRRORS if available<br>ERROR: Fetcher failure: Fetch command failed with e=
xit code 128, output:<br>Cloning into bare repository &#39;/home/deepika/bb=
b/poky/build/downloads/git2/.home.deepika.bbb.poky.kernel-3.14.29&#39;...<b=
r><br>error: object directory /home/deepika/bbb/poky/build/downloads/git2/g=
it.yoctoproject.org.linux-yocto-3.14.git/objects does not exist; check .git=
/objects/info/alternates.<br>fatal: git upload-pack: cannot find object dbe=
5b52e93ff114b2c0f5da6f6af91f52c18f2b8:<br>fatal: The remote end hung up une=
xpectedly<br><br>ERROR: Function failed: Fetcher failure for URL: &#39;git:=
///home/deepika/bbb/poky/kernel-3.14.29;protocol=3Dfile;bareclone=3D1;branc=
h=3Dstandard/common-pc/base,meta;name=3Dmachine,meta&#39;. Unable to fetch =
URL from any source.<br>ERROR: Logfile of failure stored in: /home/deepika/=
bbb/poky/build/tmp/work/qemux86-poky-linux/linux-yocto/3.14.29+gitAUTOINC+6=
eddbf4787_f6aa7aaca8-r0/temp/log.do_fetch.26206<br>ERROR: Task 75 (/home/de=
epika/bbb/poky/meta/recipes-kernel/linux/<a href=3D"http://linux-yocto_3.14=
.bb">linux-yocto_3.14.bb</a>, do_fetch) failed with exit code &#39;1&#39;<b=
r><br></b></div>Can anyone help<br><div><br></div></div><div class=3D"gmail=
_extra"><br><div class=3D"gmail_quote">On Thu, Nov 26, 2015 at 7:11 PM, Bru=
ce Ashfield <span dir=3D"ltr">&lt;<a href=3D"mailto:bruce.ashfield@windrive=
r.com" target=3D"_blank">bruce.ashfield@windriver.com</a>&gt;</span> wrote:=
<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-lef=
t:1px #ccc solid;padding-left:1ex"><span class=3D"">On 15-11-26 02:39 AM, D=
eepika Teriar wrote:<br>
</span><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-=
left:1px #ccc solid;padding-left:1ex"><span class=3D"">
Hi<br>
<br>
I am customizing yocto for beaglebone black<br>
I do not want my kernel to get downloaded from the git after I clean the<br=
>
build directory. So i have kept the linux-kernel directory with the name<br=
>
kernel-3.14.29 in the poky directory.<br></span>
And in the <a href=3D"http://linux-yocto_3.14.bb" rel=3D"noreferrer" target=
=3D"_blank">linux-yocto_3.14.bb</a> &lt;<a href=3D"http://linux-yocto_3.14.=
bb" rel=3D"noreferrer" target=3D"_blank">http://linux-yocto_3.14.bb</a>&gt;=
 file i have<br>
changed SRC_URI *from:*<span class=3D""><br>
<br>
SRC_URI =3D<br>
&quot;git://<a href=3D"http://git.yoctoproject.org/linux-yocto-3.14.git;bar=
eclone=3D1;branch=3D$%7BKBRANCH%7D,$%7BKMETA%7D;name=3Dmachine,meta" rel=3D=
"noreferrer" target=3D"_blank">git.yoctoproject.org/linux-yocto-3.14.git;ba=
reclone=3D1;branch=3D${KBRANCH},${KMETA};name=3Dmachine,meta</a><br></span>
&lt;<a href=3D"http://git.yoctoproject.org/linux-yocto-3.14.git;bareclone=
=3D1;branch=3D$%7BKBRANCH%7D,$%7BKMETA%7D;name=3Dmachine,meta" rel=3D"noref=
errer" target=3D"_blank">http://git.yoctoproject.org/linux-yocto-3.14.git;b=
areclone=3D1;branch=3D${KBRANCH},${KMETA};name=3Dmachine,meta</a>&gt;&quot;=
<br>
<br>
*to :*<span class=3D""><br>
<br>
SRC_URI =3D &quot;file://${COREBASE}/kernel-3.14.29&quot;<br>
<br>
On compiling core-image-minimal I am getting the following error<br></span>
*<span class=3D""><br>
ERROR: ExpansionError during parsing<br>
/home/deepika/bbb/poky/meta/recipes-kernel/linux/<a href=3D"http://linux-yo=
cto_3.14.bb" rel=3D"noreferrer" target=3D"_blank">linux-yocto_3.14.bb</a><b=
r></span>
&lt;<a href=3D"http://linux-yocto_3.14.bb" rel=3D"noreferrer" target=3D"_bl=
ank">http://linux-yocto_3.14.bb</a>&gt;: Failure expanding variable do_patc=
h:<span class=3D""><br>
ExpansionError: Failure expanding variable SRCPV, expression was<br>
${@bb.fetch2.get_srcrev(d)} which triggered exception FetchError:<br>
Fetcher failure: SRCREV was used yet no valid SCM was found in SRC_URI<br>
<br></span>
*<span class=3D""><br>
Can any one tell me the error?<br>
</span></blockquote>
<br>
You still need the git protocol, the fetcher can&#39;t determine what to<br=
>
do with the SRCREV.<br>
<br>
Try:<br>
<br>
SRC_URI =3D &quot;git://${COREBASE}/kernel-3.14.29;protocol=3Dfile;bareclon=
e=3D1;branch=3D${KBRANCH},${KMETA};name=3Dmachine,meta&quot;<br>
<br>
Bruce<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<br>
Thanks<br>
Deepika<br>
<br>
<br>
<br>
<br>
</blockquote>
<br>
</blockquote></div><br></div>

--089e013a05ae6fe15c0525802c7f--
