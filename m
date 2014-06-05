Return-Path: <gada.kashyap@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EDEBAE00BE0; Wed,  4 Jun 2014 23:30:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gada.kashyap[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.48 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yh0-f48.google.com (mail-yh0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA020E00B74
	for <yocto@yoctoproject.org>; Wed,  4 Jun 2014 23:30:02 -0700 (PDT)
Received: by mail-yh0-f48.google.com with SMTP id a41so467481yho.35
	for <yocto@yoctoproject.org>; Wed, 04 Jun 2014 23:30:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=kWw9UAtEGT4P26yztsxjUn1qd4sQ0nVOnp1EGgg5/j4=;
	b=OQN9tIXlU4dPwUWYO9K7w60QrbpdKILKN4MYMRB8da7tZeFs1Wyqzmzo1Mffg659C2
	bnSjG/6Bqrtg3OXjUbB77mID8uADYBypPqajljSks/cpLL06wQatR+einTDU4wYNml8D
	vOuYwyArxybge8mFRezrO3p5AcXS6qVTOjdXK0bF14MnXDTG167V/ZpigYDRJG1v0QA3
	TE2IiVWy0jrUKbdB3Abso3AhLQwIRciHmmCAcUqJ75G+Y540RX7a/19cPKkS2RsDE6Nh
	kvCNjWc78qi4sijZMuUkH75UF3ttizYcbeXJ0GlLtHcOlBvQx5wUwm2aMOJNkQdywwJW
	33Eg==
MIME-Version: 1.0
X-Received: by 10.236.91.48 with SMTP id g36mr32354704yhf.151.1401949801711;
	Wed, 04 Jun 2014 23:30:01 -0700 (PDT)
Received: by 10.170.143.138 with HTTP; Wed, 4 Jun 2014 23:30:01 -0700 (PDT)
In-Reply-To: <538E028D.2090200@linux.intel.com>
References: <CANJXcUap4aox3bhkxzq+EqTtZHokfMX6cqaao5o0oLqqRE+4SA@mail.gmail.com>
	<CAJTo0LaNbvwf+2yEnPorOj81N4fSJwfYOxppqHcrX-hUHabBeA@mail.gmail.com>
	<CANJXcUaZm=4XeG4PDZwbaX+DtCo-fh+-aWWD49EsjOVmOuiN0Q@mail.gmail.com>
	<CANJXcUZOwrAuMjkt_RfBuSU3fyyDbay024qvf1KEfuPkOuJBew@mail.gmail.com>
	<CAJTo0Lbd257SN_SmwD=2MKYrw0LYODnhJoPhCPCSpdhxf7Nixw@mail.gmail.com>
	<CANJXcUYEdbSf1Fo5kZAw5GE+36fnz=EgzZojXxr44WdnCtC1Qg@mail.gmail.com>
	<CAJTo0LbKNeujMacRb-O3RHq5LfWZ01axS-TYTwhScjFnm-uu8g@mail.gmail.com>
	<CANJXcUasi1Pf3T4Zq5Fz7ExKq7Zm9FKCYERRLuaaLODuEZR0Hg@mail.gmail.com>
	<538E028D.2090200@linux.intel.com>
Date: Thu, 5 Jun 2014 12:00:01 +0530
Message-ID: <CANJXcUbN9_-+-JmDvSRE80zTzuGEQv-0DcM2hWuz7VC88ErwkQ@mail.gmail.com>
From: Kashyap Gada <gada.kashyap@gmail.com>
To: Saul Wold <sgw@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Source Command Permission Denied
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
X-List-Received-Date: Thu, 05 Jun 2014 06:30:09 -0000
Content-Type: multipart/alternative; boundary=20cf300e4d3dec8d7b04fb10df92

--20cf300e4d3dec8d7b04fb10df92
Content-Type: text/plain; charset=UTF-8

Its a different ntfs partition. I mount it manually.


On Tue, Jun 3, 2014 at 10:44 PM, Saul Wold <sgw@linux.intel.com> wrote:

> On 06/03/2014 09:20 AM, Kashyap Gada wrote:
>
>> Thank you Ross.
>>
>> I actually ran into another problem in bitbaking core-image-sato from the
>> getting started guide at the yocto site which led me into changing to a
>> setup which doesnot include mounting of any drive to my ubuntu
>> distribution. the problem is as follows.
>>
>> While compiling of e2fsprogs-1.42.9-r0 do_compile (pid 5276)
>>
>> the details of the error log generated is as follows
>>
>>
> <SNIP>
>
>
>  chmod: cannot operate on dangling symlink 'prof_err.h'
>> chmod: prof_err.h: new permissions are r-xrwxrwx, not r-xr-xr-x
>> chmod: prof_err.c: new permissions are r-xrwxrwx, not r-xr-xr-x
>>
>
> Looks like your still having some sort of permissions issue. Where exactly
> are you doing your build?  What type of filesystem?
>
> Sau!
>
>
>
>  make[2]: *** [prof_err.h] Error 1
>> make[2]: *** Waiting for unfinished jobs....
>> make[2]: Leaving directory
>> `/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-
>> linux/e2fsprogs/1.42.9-r0/build/misc'
>> make[1]: *** [all-progs-recursive] Error 1
>> make[1]: Leaving directory
>> `/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-
>> linux/e2fsprogs/1.42.9-r0/build'
>> make: *** [all] Error 2
>> ERROR: oe_runmake failed
>> WARNING: exit code 1 from a shell command.
>> ERROR: Function failed: do_compile (log file is located at
>> /mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-
>> linux/e2fsprogs/1.42.9-r0/temp/log.do_compile.5276)
>>
>>
>>
>>
>> Sorry for attaching this to this list.
>>
>>
>>
>> On Tue, Jun 3, 2014 at 9:20 PM, Burton, Ross <ross.burton@intel.com>
>> wrote:
>>
>>  So you probably lost every executable mode when you did that.  Make a
>>> fresh clone and reapply your changes, that will be easier than finding
>>> every file that isn't executable when it should be.
>>>
>>> Ross
>>>
>>> On 3 June 2014 16:49, Kashyap Gada <gada.kashyap@gmail.com> wrote:
>>>
>>>> its copied!
>>>>
>>>>
>>>> On Tue, Jun 3, 2014 at 9:16 PM, Burton, Ross <ross.burton@intel.com>
>>>>
>>> wrote:
>>>
>>>>
>>>>> On 3 June 2014 16:39, Kashyap Gada <gada.kashyap@gmail.com> wrote:
>>>>>
>>>>>> bash: /home/kashyap/yocto/poky/scripts/oe-setup-builddir: Permission
>>>>>> denied
>>>>>>
>>>>>
>>>>> The permissions on that file don't involve +x.  Is that a fresh
>>>>> checkout of poky or copied from the removable media?
>>>>>
>>>>> Ross
>>>>>
>>>>
>>>>
>>>>
>>>
>>
>>
>>

--20cf300e4d3dec8d7b04fb10df92
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Its a different ntfs partition. I mount it manually.</div>=
<div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Tue, Jun 3=
, 2014 at 10:44 PM, Saul Wold <span dir=3D"ltr">&lt;<a href=3D"mailto:sgw@l=
inux.intel.com" target=3D"_blank">sgw@linux.intel.com</a>&gt;</span> wrote:=
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"">On 06/03/2014 09:20 AM, Kash=
yap Gada wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Thank you Ross.<br>
<br>
I actually ran into another problem in bitbaking core-image-sato from the<b=
r>
getting started guide at the yocto site which led me into changing to a<br>
setup which doesnot include mounting of any drive to my ubuntu<br>
distribution. the problem is as follows.<br>
<br>
While compiling of e2fsprogs-1.42.9-r0 do_compile (pid 5276)<br>
<br>
the details of the error log generated is as follows<br>
<br>
</blockquote>
<br></div>
&lt;SNIP&gt;<div class=3D""><br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
chmod: cannot operate on dangling symlink &#39;prof_err.h&#39;<br>
chmod: prof_err.h: new permissions are r-xrwxrwx, not r-xr-xr-x<br>
chmod: prof_err.c: new permissions are r-xrwxrwx, not r-xr-xr-x<br>
</blockquote>
<br></div>
Looks like your still having some sort of permissions issue. Where exactly =
are you doing your build? =C2=A0What type of filesystem?<br>
<br>
Sau!<div class=3D"HOEnZb"><div class=3D"h5"><br>
<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
make[2]: *** [prof_err.h] Error 1<br>
make[2]: *** Waiting for unfinished jobs....<br>
make[2]: Leaving directory<br>
`/mnt/kashyap/hda/yocto/poky/<u></u>build/tmp/work/i586-poky-<u></u>linux/e=
2fsprogs/1.42.9-r0/<u></u>build/misc&#39;<br>
make[1]: *** [all-progs-recursive] Error 1<br>
make[1]: Leaving directory<br>
`/mnt/kashyap/hda/yocto/poky/<u></u>build/tmp/work/i586-poky-<u></u>linux/e=
2fsprogs/1.42.9-r0/<u></u>build&#39;<br>
make: *** [all] Error 2<br>
ERROR: oe_runmake failed<br>
WARNING: exit code 1 from a shell command.<br>
ERROR: Function failed: do_compile (log file is located at<br>
/mnt/kashyap/hda/yocto/poky/<u></u>build/tmp/work/i586-poky-<u></u>linux/e2=
fsprogs/1.42.9-r0/<u></u>temp/log.do_compile.5276)<br>
<br>
<br>
<br>
<br>
Sorry for attaching this to this list.<br>
<br>
<br>
<br>
On Tue, Jun 3, 2014 at 9:20 PM, Burton, Ross &lt;<a href=3D"mailto:ross.bur=
ton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&gt; wrote:<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
So you probably lost every executable mode when you did that. =C2=A0Make a<=
br>
fresh clone and reapply your changes, that will be easier than finding<br>
every file that isn&#39;t executable when it should be.<br>
<br>
Ross<br>
<br>
On 3 June 2014 16:49, Kashyap Gada &lt;<a href=3D"mailto:gada.kashyap@gmail=
.com" target=3D"_blank">gada.kashyap@gmail.com</a>&gt; wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
its copied!<br>
<br>
<br>
On Tue, Jun 3, 2014 at 9:16 PM, Burton, Ross &lt;<a href=3D"mailto:ross.bur=
ton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&gt;<br>
</blockquote>
wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<br>
On 3 June 2014 16:39, Kashyap Gada &lt;<a href=3D"mailto:gada.kashyap@gmail=
.com" target=3D"_blank">gada.kashyap@gmail.com</a>&gt; wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
bash: /home/kashyap/yocto/poky/<u></u>scripts/oe-setup-builddir: Permission=
<br>
denied<br>
</blockquote>
<br>
The permissions on that file don&#39;t involve +x. =C2=A0Is that a fresh<br=
>
checkout of poky or copied from the removable media?<br>
<br>
Ross<br>
</blockquote>
<br>
<br>
</blockquote>
<br>
</blockquote>
<br>
<br>
<br>
</blockquote>
</div></div></blockquote></div><br></div>

--20cf300e4d3dec8d7b04fb10df92--
