Return-Path: <pervivek@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 43FB6E00D0A; Tue,  8 Sep 2015 07:20:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pervivek[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.160.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yk0-f176.google.com (mail-yk0-f176.google.com
	[209.85.160.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8404E00B66
	for <yocto@yoctoproject.org>; Tue,  8 Sep 2015 07:20:01 -0700 (PDT)
Received: by ykcf206 with SMTP id f206so120591982ykc.3
	for <yocto@yoctoproject.org>; Tue, 08 Sep 2015 07:20:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=7yn01hOw8x3A6hv+yeNrY6xPABwVQacs4VOyXeJRh+Y=;
	b=pNB7KuSpm1bu7SoQxFzER/gJicyhSoPkjh4dN2xw2gyLhmJRm/xufTVUwxj2nm3mc2
	WaunRaH9ldxJ4UMz8OVaI0xWIbpoVrJ8IOjw3f0ufTsVH85636rSU1WSUbcJAOjR7W9E
	UmRWKcjoxoyem70GZUYNP7Qi2GfrLgITcQTVamOXTy28Jy4TGa+93upKid6qbKpBsipG
	vCJ5ppkoMzggUOa1c7OvVa4dna7OSVUsnMP+PqhcqTo11vyHCTMt6SrY09Jya53Kj1Xs
	Ew9YEfOy7ykzCnk1n+A5Oa5dQcbetMxgMpEVilre8PhmVGAkSSJ2IzTYZCbMXQ9lN+BK
	VEGQ==
MIME-Version: 1.0
X-Received: by 10.170.206.85 with SMTP id x82mr28998898yke.76.1441722000632;
	Tue, 08 Sep 2015 07:20:00 -0700 (PDT)
Received: by 10.31.179.12 with HTTP; Tue, 8 Sep 2015 07:20:00 -0700 (PDT)
In-Reply-To: <55EEDA34.2080403@mlbassoc.com>
References: <CALLyC8S3eegCzqCiZk3+e0H2fdrLoJZbxkG6=jis7E45L4DMvQ@mail.gmail.com>
	<55EED365.3020809@mlbassoc.com>
	<CALLyC8SKe937onNKJwX9Zmc65FO0DqM10krLFyThXRZYBw7WGg@mail.gmail.com>
	<55EEDA34.2080403@mlbassoc.com>
Date: Tue, 8 Sep 2015 19:50:00 +0530
Message-ID: <CALLyC8R-8bPqcKPY6TZ+GsdJAGOTausTeWayRi=VmqriZLADxQ@mail.gmail.com>
From: Vivek Per <pervivek@gmail.com>
To: yocto@yoctoproject.org
Subject: Re: do_unpack task getting failed when tar files are added to download directory manually
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
X-List-Received-Date: Tue, 08 Sep 2015 14:20:06 -0000
Content-Type: multipart/alternative; boundary=001a1139eceeb67654051f3d0ff1

--001a1139eceeb67654051f3d0ff1
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Thank you very much Gary Thomas , The vlan tar  file has been corrupted .
The issue has been resolved.

Thanks and Regards
         Vivek

On Tue, Sep 8, 2015 at 6:23 PM, Gary Thomas <gary@mlbassoc.com> wrote:

> On 2015-09-08 06:47, Vivek Per wrote:
>
>> Hi Gary Thomas,
>>
>
> Please keep replies on the mailing list so that all may benefit.
>
>
>> I am getting this error
>>
>> ERROR: Function failed: Unpack failure for URL: '
>> http://vlan.sourcearchive.com/downloadss/1.9-3ubuntu9/vlan_1.9.orig.tar.=
gz'.
>> Unpack command
>>
>> PATH=3D"/data/work/vivek/yocto/poky/ossdk/poky/scripts:/data/work/vivek/=
yocto/poky/build/tmp/sysroots/x86_64-linux/usr/bin/arm-linux-linux-gnueabi:=
/data/work/vivek/yocto/poky/build/tmp/sysroots/iukram/usr/bin/crossscripts:=
/data/work/vivek/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/sbin:/data/=
work/vivek/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/bin:/data/work/vi=
vek/yocto/poky/build/tmp/sysroots/x86_64-linux/sbin:/data/work/vivek/yocto/=
poky/build/tmp/sysroots/x86_64-linux/bin:/data/work/vivek/yocto/poky/ossdk/=
poky/scripts:/data/work/vivek/yocto/poky/ossdk/poky/bitbake/bin:/usr/local/=
sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/gam=
es"
>> tar xz --no-same-owner -f
>> /data/work/vivek/yocto/poky/downloads/vlan_1.9.orig.tar.gz failed with
>> return value 2
>> Log data follows:
>> | DEBUG: Executing python function do_unpack
>> | DEBUG: Executing python function base_do_unpack
>> | NOTE: Unpacking
>> /data/work/vivek/yocto/poky/downloads/vlan_1.9.orig.tar.gz to
>> /data/work/vivek/yocto/poky/build/tmp/work/cortexa8t2hf-vfp-neon-linux-l=
inux-gnueabi/vlan/1.9-r0/
>> |
>> | gzip: stdin: unexpected end of file
>> | tar: Child returned status 1
>> | tar: Error is not recoverable: exiting now
>>
>
> Have you tried unpacking _exactly_ this file by hand?  It looks to be
> damaged.
>
> | DEBUG: Python function base_do_unpack finished
>> | DEBUG: Python function do_unpack finished
>> | ERROR: Function failed: Unpack failure for URL: '
>> http://vlan.sourcearchive.com/downloadss/1.9-3ubuntu9/vlan_1.9.orig.tar.=
gz'.
>> Unpack command
>>
>> PATH=3D"/data/work/vivek/yocto/poky/ossdk/poky/scripts:/data/work/vivek/=
yocto/poky/build/tmp/sysroots/x86_64-linux/usr/bin/arm-linux-linux-gnueabi:=
/data/work/vivek/yocto/poky/build/tmp/sysroots/iukram/usr/bin/crossscripts:=
/data/work/vivek/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/sbin:/data/=
work/vivek/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/bin:/data/work/vi=
vek/yocto/poky/build/tmp/sysroots/x86_64-linux/sbin:/data/work/vivek/yocto/=
poky/build/tmp/sysroots/x86_64-linux/bin:/data/work/vivek/yocto/poky/ossdk/=
poky/scripts:/data/work/vivek/yocto/poky/ossdk/poky/bitbake/bin:/usr/local/=
sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/gam=
es"
>> tar xz --no-same-owner -f
>> /data/work/vivek/yocto/poky/downloads/vlan_1.9.orig.tar.gz failed with
>> return value 2
>> ERROR: Task 0
>> (/data/work/vivek/yocto/poky/ossdk/openembedded/meta-networking/recipes-=
connectivity/vlan/
>> vlan_1.9.bb <http://vlan_1.9.bb>, do_unpack) failed with exit code '1'
>> NOTE: Tasks Summary: Attempted 361 tasks of which 359 didn't need to be
>> rerun and 1 failed.
>> No currently running tasks (361 of 372)
>>
>> Summary: 1 task failed:
>>
>>  /data/work/vivek/yocto/poky/ossdk/openembedded/meta-networking/recipes-=
connectivity/vlan/
>> vlan_1.9.bb <http://vlan_1.9.bb>, do_unpack
>> Summary: There were 2 WARNING messages shown.
>> Summary: There was 1 ERROR message shown, returning a non-zero exit code=
.
>>
>>
>> Thanks and regards
>>      vivek
>>
>> On Tue, Sep 8, 2015 at 5:54 PM, Gary Thomas <gary@mlbassoc.com <mailto:
>> gary@mlbassoc.com>> wrote:
>>
>>     On 2015-09-08 06:10, Vivek Per wrote:
>>
>>         Hi,
>>         I want to build vlan_1.9.bb <http://vlan_1.9.bb> <
>> http://vlan_1.9.bb> (open-embedded recipe) in my system . I downloaded
>> vlan_1.9.orig.tar.gz tarball manually (same version
>>         specified in recipe) and
>>         placed in download (DL_DIR) directory and created an empty
>> vlan_1.9.orig.tar.gz.done in download directory and try to *bitbake vlan=
*.
>> It is giving error while do_unpack
>>         task and
>>         vlan_1.9.orig.tar.gz.lock file is getting created in download
>> directory(DL_DIR). I can able to build other yocto recipes normally like
>> this but i am facing problem with
>>         open-embedded recipes only .I have added open-embedded path in
>> bblayers.conf file. Can any one please tell me how can i make this file =
get
>> included from download directory.
>>
>>
>>     What is the exact error message you are getting?
>>
>>
> --
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------
>

--001a1139eceeb67654051f3d0ff1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thank you very much Gary Thomas , The vlan tar =C2=A0file =
has been corrupted . The issue has been resolved.<div><br></div><div>Thanks=
 and Regards</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Vivek</div></div><=
div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Tue, Sep 8, 201=
5 at 6:23 PM, Gary Thomas <span dir=3D"ltr">&lt;<a href=3D"mailto:gary@mlba=
ssoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</span> wrote:<br><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #c=
cc solid;padding-left:1ex">On 2015-09-08 06:47, Vivek Per wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Hi Gary Thomas,<br>
</blockquote>
<br>
Please keep replies on the mailing list so that all may benefit.<span class=
=3D""><br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<br>
I am getting this error<br>
<br>
ERROR: Function failed: Unpack failure for URL: &#39;<a href=3D"http://vlan=
.sourcearchive.com/downloadss/1.9-3ubuntu9/vlan_1.9.orig.tar.gz" rel=3D"nor=
eferrer" target=3D"_blank">http://vlan.sourcearchive.com/downloadss/1.9-3ub=
untu9/vlan_1.9.orig.tar.gz</a>&#39;. Unpack command<br>
PATH=3D&quot;/data/work/vivek/yocto/poky/ossdk/poky/scripts:/data/work/vive=
k/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/bin/arm-linux-linux-gnueab=
i:/data/work/vivek/yocto/poky/build/tmp/sysroots/iukram/usr/bin/crossscript=
s:/data/work/vivek/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/sbin:/dat=
a/work/vivek/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/bin:/data/work/=
vivek/yocto/poky/build/tmp/sysroots/x86_64-linux/sbin:/data/work/vivek/yoct=
o/poky/build/tmp/sysroots/x86_64-linux/bin:/data/work/vivek/yocto/poky/ossd=
k/poky/scripts:/data/work/vivek/yocto/poky/ossdk/poky/bitbake/bin:/usr/loca=
l/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/g=
ames&quot;<br>
tar xz --no-same-owner -f /data/work/vivek/yocto/poky/downloads/vlan_1.9.or=
ig.tar.gz failed with return value 2<br>
Log data follows:<br>
| DEBUG: Executing python function do_unpack<br>
| DEBUG: Executing python function base_do_unpack<br>
| NOTE: Unpacking /data/work/vivek/yocto/poky/downloads/vlan_1.9.orig.tar.g=
z to /data/work/vivek/yocto/poky/build/tmp/work/cortexa8t2hf-vfp-neon-linux=
-linux-gnueabi/vlan/1.9-r0/<br>
|<br>
| gzip: stdin: unexpected end of file<br>
| tar: Child returned status 1<br>
| tar: Error is not recoverable: exiting now<br>
</blockquote>
<br></span>
Have you tried unpacking _exactly_ this file by hand?=C2=A0 It looks to be =
damaged.<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><span class=3D"">
| DEBUG: Python function base_do_unpack finished<br>
| DEBUG: Python function do_unpack finished<br>
| ERROR: Function failed: Unpack failure for URL: &#39;<a href=3D"http://vl=
an.sourcearchive.com/downloadss/1.9-3ubuntu9/vlan_1.9.orig.tar.gz" rel=3D"n=
oreferrer" target=3D"_blank">http://vlan.sourcearchive.com/downloadss/1.9-3=
ubuntu9/vlan_1.9.orig.tar.gz</a>&#39;. Unpack command<br>
PATH=3D&quot;/data/work/vivek/yocto/poky/ossdk/poky/scripts:/data/work/vive=
k/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/bin/arm-linux-linux-gnueab=
i:/data/work/vivek/yocto/poky/build/tmp/sysroots/iukram/usr/bin/crossscript=
s:/data/work/vivek/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/sbin:/dat=
a/work/vivek/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/bin:/data/work/=
vivek/yocto/poky/build/tmp/sysroots/x86_64-linux/sbin:/data/work/vivek/yoct=
o/poky/build/tmp/sysroots/x86_64-linux/bin:/data/work/vivek/yocto/poky/ossd=
k/poky/scripts:/data/work/vivek/yocto/poky/ossdk/poky/bitbake/bin:/usr/loca=
l/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/g=
ames&quot;<br>
tar xz --no-same-owner -f /data/work/vivek/yocto/poky/downloads/vlan_1.9.or=
ig.tar.gz failed with return value 2<br></span>
ERROR: Task 0 (/data/work/vivek/yocto/poky/ossdk/openembedded/meta-networki=
ng/recipes-connectivity/vlan/<a href=3D"http://vlan_1.9.bb" rel=3D"noreferr=
er" target=3D"_blank">vlan_1.9.bb</a> &lt;<a href=3D"http://vlan_1.9.bb" re=
l=3D"noreferrer" target=3D"_blank">http://vlan_1.9.bb</a>&gt;, do_unpack) f=
ailed with exit code &#39;1&#39;<span class=3D""><br>
NOTE: Tasks Summary: Attempted 361 tasks of which 359 didn&#39;t need to be=
 rerun and 1 failed.<br>
No currently running tasks (361 of 372)<br>
<br>
Summary: 1 task failed:<br></span>
=C2=A0 =C2=A0/data/work/vivek/yocto/poky/ossdk/openembedded/meta-networking=
/recipes-connectivity/vlan/<a href=3D"http://vlan_1.9.bb" rel=3D"noreferrer=
" target=3D"_blank">vlan_1.9.bb</a> &lt;<a href=3D"http://vlan_1.9.bb" rel=
=3D"noreferrer" target=3D"_blank">http://vlan_1.9.bb</a>&gt;, do_unpack<spa=
n class=3D""><br>
Summary: There were 2 WARNING messages shown.<br>
Summary: There was 1 ERROR message shown, returning a non-zero exit code.<b=
r>
<br>
<br>
Thanks and regards<br>
=C2=A0 =C2=A0 =C2=A0vivek<br>
<br></span><span class=3D"">
On Tue, Sep 8, 2015 at 5:54 PM, Gary Thomas &lt;<a href=3D"mailto:gary@mlba=
ssoc.com" target=3D"_blank">gary@mlbassoc.com</a> &lt;mailto:<a href=3D"mai=
lto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;&gt; wrot=
e:<br>
<br>
=C2=A0 =C2=A0 On 2015-09-08 06:10, Vivek Per wrote:<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Hi,<br></span>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 I want to build <a href=3D"http://vlan_1.9.bb" =
rel=3D"noreferrer" target=3D"_blank">vlan_1.9.bb</a> &lt;<a href=3D"http://=
vlan_1.9.bb" rel=3D"noreferrer" target=3D"_blank">http://vlan_1.9.bb</a>&gt=
; &lt;<a href=3D"http://vlan_1.9.bb" rel=3D"noreferrer" target=3D"_blank">h=
ttp://vlan_1.9.bb</a>&gt; (open-embedded recipe) in my system . I downloade=
d vlan_1.9.orig.tar.gz tarball manually (same version<span class=3D""><br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 specified in recipe) and<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 placed in download (DL_DIR) directory and creat=
ed an empty vlan_1.9.orig.tar.gz.done in download directory and try to *bit=
bake vlan*. It is giving error while do_unpack<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 task and<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 vlan_1.9.orig.tar.gz.lock file is getting creat=
ed in download directory(DL_DIR). I can able to build other yocto recipes n=
ormally like this but i am facing problem with<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 open-embedded recipes only .I have added open-e=
mbedded path in bblayers.conf file. Can any one please tell me how can i ma=
ke this file get included from download directory.<br>
<br>
<br>
=C2=A0 =C2=A0 What is the exact error message you are getting?<br>
<br>
</span></blockquote><div class=3D"HOEnZb"><div class=3D"h5">
<br>
-- <br>
------------------------------------------------------------<br>
Gary Thomas=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=
=C2=A0 Consulting for the<br>
MLB Associates=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=
=A0 Embedded world<br>
------------------------------------------------------------<br>
</div></div></blockquote></div><br></div>

--001a1139eceeb67654051f3d0ff1--
