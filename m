Return-Path: <vidal.develone@gmail.com>
Received: from mail-ea0-f178.google.com (mail-ea0-f178.google.com
	[209.85.215.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73EB0E0071F
	for <yocto@yoctoproject.org>; Tue, 16 Jul 2013 16:07:32 -0700 (PDT)
Received: by mail-ea0-f178.google.com with SMTP id l15so668238eak.23
	for <yocto@yoctoproject.org>; Tue, 16 Jul 2013 16:07:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=wMPcuihQl3rKzFHBUW2Z+Og+RKUNKcdBM0nf3o7FOp4=;
	b=UK8Doc5K5vJbv0d6z2ogHRTFBpBpySH/dKogZkrtMx7GSDop41bkEAUNEdUgdkWllr
	mu0/Yy1KYYaKwM9ouNWaDK5l8XHEY+Hx/Bvgtv/6ogBO/KNEcHWMUJJBmnzGaOlnVbd2
	QJXl+fRzYOm8HK1Fw42vUDrZxTTdaPEXXb/NtR+cGXn4JXJ9wzb0dF0AyhpMAKcCo0cu
	bQRlIyQi3m5nnuU6XZRlroveJCrTLwqzFV+5z8zVa+7QxQ45I6Bll5ge8ic5GWFf86kb
	jg/GF/FIY0sLhnshkcraAAg0Xxcy+b41WgkIGuzTb2kgGjg++M7iSYJA8AMJWv/D5dTU
	d67w==
MIME-Version: 1.0
X-Received: by 10.15.10.132 with SMTP id g4mr3618607eet.38.1374016051701; Tue,
	16 Jul 2013 16:07:31 -0700 (PDT)
Received: by 10.223.74.139 with HTTP; Tue, 16 Jul 2013 16:07:31 -0700 (PDT)
In-Reply-To: <CANwz6nx_=iOYF8H3nO3GbDhXU28vVew4giYOMqf=NQZPDgvg7g@mail.gmail.com>
References: <CANwz6nzHiBrXscuZS2Y1xXUThiwyo4AT7bD90VfVsh=Lt_cfLQ@mail.gmail.com>
	<5727572.3nCIyqyF5R@helios>
	<CANwz6nx_=iOYF8H3nO3GbDhXU28vVew4giYOMqf=NQZPDgvg7g@mail.gmail.com>
Date: Tue, 16 Jul 2013 17:07:31 -0600
Message-ID: <CANwz6nzTH9tUapYp_PUi0HQS_VG_EH1wxrthTv0DntkHN7fyvA@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: zedboard & gnuradio
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
X-List-Received-Date: Tue, 16 Jul 2013 23:07:33 -0000
Content-Type: multipart/alternative; boundary=001a11c3f620ad8b1204e1a90af2

--001a11c3f620ad8b1204e1a90af2
Content-Type: text/plain; charset=ISO-8859-1

Hello,
with the change that Paul recommended the  errors turned into 4 warnings
ERROR: QA Issue: File '/usr/plugins/designer/libqwt_designer_plugin.so'
from qwt was already stripped, this will prevent future debugging!
ERROR: QA Issue: File '/usr/lib/libqwt.so.6.0.1' from qwt was already
stripped, this will prevent future debugging!
ERROR: QA Issue: File '/usr/lib/libqwtmathml.so.6.0.1' from qwt was already
stripped, this will prevent future debugging!
WARNING: QA Issue: Found library in wrong location:
/usr/plugins/designer/libqwt_designer_plugin.so
ERROR: QA run found fatal errors. Please consider fixing them.
ERROR: Function failed: do_package_qa
ERROR: Logfile of failure stored in:
/home/vidal/POKY/build071613_zedboard/poky/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/qwt/6.0.1-r1/temp/log.do_package.27159
ERROR: Task 1126
(/home/vidal/POKY/build071613_zedboard/poky/meta-oe/meta-oe/recipes-qt/qwt/
qwt_6.0.1.bb, do_package) failed with exit code '1'

WARNING: QA Issue: File '/usr/plugins/designer/libqwt_designer_plugin.so'
from qwt was already stripped, this will prevent future debugging!
WARNING: QA Issue: File '/usr/lib/libqwt.so.6.0.1' from qwt was already
stripped, this will prevent future debugging!
WARNING: QA Issue: File '/usr/lib/libqwtmathml.so.6.0.1' from qwt was
already stripped, this will prevent future debugging!
WARNING: QA Issue: Found library in wrong location:
/usr/plugins/designer/libqwt_designer_plugin.so
NOTE: Tasks Summary: Attempted 4333 tasks of which 3960 didn't need to be
rerun and all succeeded
Thanks for all the help..


On Tue, Jul 16, 2013 at 1:18 PM, Edward Vidal <vidal.develone@gmail.com>wrote:

> Paul,
> I opted for options b.)  modifying
> /home/vidal/POKY/build071613_zedboard/poky/meta-yocto/conf/distro/poky.conf
> mvoing already-stripped from  ERROR_QA to WARN_QA .
> Build is currently in progress.
> My question will option a.)  need to be done to prevent this from
> occurring in future releases.
> Thanks not working with the variables would have made this extremely
> difficult to find and fix.
>
>
> On Tue, Jul 16, 2013 at 11:50 AM, Paul Eggleton <
> paul.eggleton@linux.intel.com> wrote:
>
>> Hi Edward,
>>
>> On Tuesday 16 July 2013 08:47:03 Edward Vidal wrote:
>> > ERROR: QA Issue: File '/usr/plugins/designer/libqwt_designer_plugin.so'
>> > from qwt was already stripped, this will prevent future debugging!
>> > ERROR: QA Issue: File '/usr/lib/libqwt.so.6.0.1' from qwt was already
>> > stripped, this will prevent future debugging!
>> > ERROR: QA Issue: File '/usr/lib/libqwtmathml.so.6.0.1' from qwt was
>> already
>> > stripped, this will prevent future debugging!
>>
>> poky.conf now marks this QA issue as an error instead of a warning in
>> order to
>> pick up on quality issues when running builds. You can either:
>>
>> a) Fix the recipe so that qwt gets built without stripping its output
>> binaries, or
>>
>> b) set your own value for ERROR_QA and WARN_QA so that "already-stripped"
>> appears in WARN_QA rather than ERROR_QA
>>
>> Cheers,
>> Paul
>>
>> --
>>
>> Paul Eggleton
>> Intel Open Source Technology Centre
>>
>
>

--001a11c3f620ad8b1204e1a90af2
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hello,<br></div>with the change that Paul recomm=
ended the=A0 errors turned into 4 warnings <br>ERROR: QA Issue: File &#39;/=
usr/plugins/designer/libqwt_designer_plugin.so&#39; from qwt was already st=
ripped, this will prevent future debugging!<br>
ERROR: QA Issue: File &#39;/usr/lib/libqwt.so.6.0.1&#39; from qwt was alrea=
dy stripped, this will prevent future debugging!<br>ERROR: QA Issue: File &=
#39;/usr/lib/libqwtmathml.so.6.0.1&#39; from qwt was already stripped, this=
 will prevent future debugging!<br>
WARNING: QA Issue: Found library in wrong location: /usr/plugins/designer/l=
ibqwt_designer_plugin.so<br>ERROR: QA run found fatal errors. Please consid=
er fixing them.<br>ERROR: Function failed: do_package_qa<br>ERROR: Logfile =
of failure stored in: /home/vidal/POKY/build071613_zedboard/poky/build/tmp/=
work/armv7a-vfp-neon-poky-linux-gnueabi/qwt/6.0.1-r1/temp/log.do_package.27=
159<br>
ERROR: Task 1126 (/home/vidal/POKY/build071613_zedboard/poky/meta-oe/meta-o=
e/recipes-qt/qwt/<a href=3D"http://qwt_6.0.1.bb">qwt_6.0.1.bb</a>, do_packa=
ge) failed with exit code &#39;1&#39;<br><br>WARNING: QA Issue: File &#39;/=
usr/plugins/designer/libqwt_designer_plugin.so&#39; from qwt was already st=
ripped, this will prevent future debugging!<br>
WARNING: QA Issue: File &#39;/usr/lib/libqwt.so.6.0.1&#39; from qwt was alr=
eady stripped, this will prevent future debugging!<br>WARNING: QA Issue: Fi=
le &#39;/usr/lib/libqwtmathml.so.6.0.1&#39; from qwt was already stripped, =
this will prevent future debugging!<br>
WARNING: QA Issue: Found library in wrong location: /usr/plugins/designer/l=
ibqwt_designer_plugin.so<br>NOTE: Tasks Summary: Attempted 4333 tasks of wh=
ich 3960 didn&#39;t need to be rerun and all succeeded<br></div>Thanks for =
all the help..<br>
</div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Tue,=
 Jul 16, 2013 at 1:18 PM, Edward Vidal <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:vidal.develone@gmail.com" target=3D"_blank">vidal.develone@gmail.com</a=
>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div><div><div><div>Paul,<b=
r></div>I opted for options b.)=A0 modifying /home/vidal/POKY/build071613_z=
edboard/poky/meta-yocto/conf/distro/poky.conf mvoing already-stripped from=
=A0 ERROR_QA to WARN_QA .<br>
</div>
Build is currently in progress.<br></div>My question will option a.)=A0 nee=
d to be done to prevent this from occurring in future releases.<br></div>Th=
anks not working with the variables would have made this extremely difficul=
t to find and fix.<br>

</div><div class=3D"HOEnZb"><div class=3D"h5"><div class=3D"gmail_extra"><b=
r><br><div class=3D"gmail_quote">On Tue, Jul 16, 2013 at 11:50 AM, Paul Egg=
leton <span dir=3D"ltr">&lt;<a href=3D"mailto:paul.eggleton@linux.intel.com=
" target=3D"_blank">paul.eggleton@linux.intel.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Hi Edward,<br>
<div><br>
On Tuesday 16 July 2013 08:47:03 Edward Vidal wrote:<br>
&gt; ERROR: QA Issue: File &#39;/usr/plugins/designer/libqwt_designer_plugi=
n.so&#39;<br>
&gt; from qwt was already stripped, this will prevent future debugging!<br>
&gt; ERROR: QA Issue: File &#39;/usr/lib/libqwt.so.6.0.1&#39; from qwt was =
already<br>
&gt; stripped, this will prevent future debugging!<br>
&gt; ERROR: QA Issue: File &#39;/usr/lib/libqwtmathml.so.6.0.1&#39; from qw=
t was already<br>
&gt; stripped, this will prevent future debugging!<br>
<br>
</div>poky.conf now marks this QA issue as an error instead of a warning in=
 order to<br>
pick up on quality issues when running builds. You can either:<br>
<br>
a) Fix the recipe so that qwt gets built without stripping its output<br>
binaries, or<br>
<br>
b) set your own value for ERROR_QA and WARN_QA so that &quot;already-stripp=
ed&quot;<br>
appears in WARN_QA rather than ERROR_QA<br>
<br>
Cheers,<br>
Paul<br>
<span><font color=3D"#888888"><br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</font></span></blockquote></div><br></div>
</div></div></blockquote></div><br></div>

--001a11c3f620ad8b1204e1a90af2--
