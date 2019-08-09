Return-Path: <ryan.harkin@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 88483E00DF2; Fri,  9 Aug 2019 07:21:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.172 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com
	[209.85.222.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2913EE00DE4
	for <yocto@yoctoproject.org>; Fri,  9 Aug 2019 07:21:29 -0700 (PDT)
Received: by mail-qk1-f172.google.com with SMTP id r6so71793083qkc.0
	for <yocto@yoctoproject.org>; Fri, 09 Aug 2019 07:21:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=vt7mBqadCpfIdP007SB5LLLD1GgrfC0N5pUG79yjbIY=;
	b=v9CKKRVJGcW2+EaNzh7GeAdxFpAzUW6Ajfg++Pyg0+U5zQxocfxagq39GLSjGFAiTg
	CXtL10NMe6RfHtWbsi4T2mE5OYQa6BeP8S0DFiz5iRv7UnkcgL6MnQtdQMgHk3AaW4i8
	NazIpjXJaAWWH0JHs33CQLr+ieElmzSL3ITMFOxoxpWE/RlKK0b50YULycM2lihd4Aoz
	VLwOe6Fr061zHeaQpsQ3vTpynqz1coX5ZTijGiU+F0Tltjg/TS3qOU7F8m0aeF0YryKL
	o/bO3PdtyaKy3wTzPwJOUCqF0DGf3LaP/x19bcpIYw+ni2osyL9BDRdyWduDiHpN5YLk
	UIHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=vt7mBqadCpfIdP007SB5LLLD1GgrfC0N5pUG79yjbIY=;
	b=qHu9F24laArCWCIDYWCGr9bOY0uUpyNMPpga5QPFKhb5X/6Bfgrebt75NY3wOiZs2J
	SKx7ednoy1aMCUIk1epLxQD5Y3aPrXAMH19xvyaSwnceCeqdmTjgEGZJK8ywME6y0lxJ
	dy/C50eP3xJMsp27t5nCa+NlAGYROqh7eOVsdzYAaxs9vqq+bgPGvaWC7Ssk5rJKhFC8
	ZCm8reRM032VcIesIGEzOzrvG0fKvtfm2ZgdlzQyS/oM8/Akc45Ab1L9kD89YogC/5Xv
	BYHqn4OHgaxWPjRF4ESotU2t1aoyjcJaRPJSTcY7Ito8KRcxRSp0UUYluP1pwp6gkloM
	h/hg==
X-Gm-Message-State: APjAAAVO7YR9WmhRaqAwJNWuTrCHnn3FRjatDiv7kA0RubbHd5rpKl58
	RqPfetndzn/7cEeUyffn72X9lUOxV6oou6wHh1NR1YJn
X-Google-Smtp-Source: APXvYqxAMwOGGK/ZULfg7QGLstdQbPzEC/lEJE2Dv9SYLAM58r6w2xP/JJo5QCMZ4JXZMUAHrlHMRNGHd9xOUltsiF0=
X-Received: by 2002:a37:68ce:: with SMTP id d197mr13195539qkc.16.1565360487086;
	Fri, 09 Aug 2019 07:21:27 -0700 (PDT)
MIME-Version: 1.0
References: <CAD0U-hKzQgF2wVnsjDLLanTiK3T=Ae8qb7dUy+qYbv=B9kUnXQ@mail.gmail.com>
	<A2A9E37E9C946847B2258F923F7CFE42065D1659@GOEMAIL-Server2.goerlitz.int>
	<CAD0U-h+uCX9-0M8nZtKMOotxBo6DWXz7Us2-FH06dqrf4Eipag@mail.gmail.com>
In-Reply-To: <CAD0U-h+uCX9-0M8nZtKMOotxBo6DWXz7Us2-FH06dqrf4Eipag@mail.gmail.com>
From: Ryan Harkin <ryan.harkin@linaro.org>
Date: Fri, 9 Aug 2019 15:21:14 +0100
Message-ID: <CAD0U-hJEWSCv8sGbXpv6kstaPgGxObxUC6_mypiNkEav6-1kvg@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: /var/volatile not mounted as tmpfs on read-only rootfs when migrating to Warrior
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
X-List-Received-Date: Fri, 09 Aug 2019 14:21:35 -0000
Content-Type: multipart/alternative; boundary="000000000000c757c6058fafe3a9"

--000000000000c757c6058fafe3a9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 2 Aug 2019 at 21:20, Ryan Harkin <ryan.harkin@linaro.org> wrote:

> Hi Carsten,
>
> Thanks for your help.
>
> On Fri, 2 Aug 2019 at 20:42, Stelling2 Carsten <
> Carsten.Stelling2@goerlitz.com> wrote:
>
>> Hi Ryan,
>>
>>
>>
>> Regarding to timesyncd, have a look at
>> https://wiki.archlinux.org/index.php/systemd-timesyncd, especially the
>> section
>>
>> =E2=80=9CNote: The service writes to a local file /var/lib/systemd/times=
ync/clock
>> with every synchronization.
>>
>> This location is hard-coded and cannot be changed. This may be
>> problematic for running off
>>
>> read-only root partition or trying to minimize writes to an SD card.=E2=
=80=9D
>>
>
> Yes, this looks like it is my problem. I experimented with timesync, and
> by making /var/lib and a few other places writable, I'm able to start it
> manually, but not via systemd, which I think is experiencing other issues
> with the read-only rootfs.
>
>
>>
>> See also https://github.com/systemd/systemd/issues/5610 for your problem
>> with systemd-resolved.
>>
>> According to this, /var, /var/tmp, /run, and /tmp should be writable.
>>
> I think the problem is not Yocto specific, but possibly I overlook
>> something.
>>
>
> Again, I think you're right. I need to have these areas writable from
> boot. But I don't know how.
>
> I  suppose my problem is that these areas used to be writable when I was
> using Sumo, but moving to Warrior has caused something to change. I'm
> wondering what extra steps I need to do in Warrior to ensure that all the=
se
> things are mounted with tmpfs as before. I expect my Sumo recipes worked
> through luck more than design, and now something has changed, I need to
> improve them.
>
> It is rather difficult to work out what the relevant changes are.
>

I still don't know what has changed between Sumo and Warrior so it works on
Sumo, but not on Warrior. However, I tried a different board (WaRP7) with
Warrior, and read-only works as expected.

I tried removing the read-only flag from my malfunctioning board setup, and
I still have the problems. Of course, the quirky system I'm fixing boots in
a more complex way that WaRP7. There is a service that boots at startup,
with a script to switch-root from initramfs to an UBI partition. The UBI
partition is being mounted read-only in the switch-root script. If I change
this to read-write, everything works.

I think one fix for me is to have my script manually mount /tmp,
/var/volatile, and so on, as tmpfs. It doesn't explain what's changed,
however. Either way, the fault appears to be in my environment, and Sumo
possibly worked with luck.

Regards,
Ryan.


> Kind regards,
> Ryan.
>
>
>>
>> Best regards,
>>
>>
>>
>> Carsten
>>
>>
>>
>> *Von:* yocto-bounces@yoctoproject.org [mailto:
>> yocto-bounces@yoctoproject.org] *Im Auftrag von *Ryan Harkin
>> *Gesendet:* Freitag, 2. August 2019 13:09
>> *An:* yocto@yoctoproject.org
>> *Cc:* openembedded
>> *Betreff:* [yocto] /var/volatile not mounted as tmpfs on read-only
>> rootfs when migrating to Warrior
>>
>>
>>
>> Hi,
>>
>>
>>
>> I have a working system based on Sumo. The system boots with a read-only
>> rootfs, then applies are read-write overlay for /etc.
>>
>>
>>
>> When I migrate to Warrior, systemd-resolved fails to start. If I mount
>> the same rootfs via NFS, it starts and works fine.  systemd-timesyncd is
>> also failing, but I haven't looked into that yet. It also works fine on =
the
>> NFS mounted system.
>>
>>
>>
>> The resolve problem seems to be caused by two things:
>>
>>     - /var/volatile is read-only
>>
>>     - /run/systemd/resolve has the wrong ownership
>>
>>       drwxr-xr-x  2 systemd-network systemd-journal  80 Jul 12 16:23
>> resolve/
>>
>>       I think this permissions problem may be a result of the
>> /var/volatile mounting
>>
>>       problems; it looks fine on the NFS mounted system.
>>
>>
>>
>> If I manually mount /var/volatile (it's in fstab) and change the
>> ownership on /run/systemd/resolve, the service starts just fine.
>>
>>
>>
>> I also notice that /tmp is not mounted at all, which may be related.
>>
>>
>>
>> Here are the various tmp mount points on my read-only rootfs:
>>
>>
>>
>> $ mount | grep tmp
>>
>> devtmpfs on /dev type devtmpfs
>> (rw,nosuid,size=3D112036k,nr_inodes=3D28009,mode=3D755)
>> tmpfs on /dev/shm type tmpfs (rw,nosuid,nodev)
>> tmpfs on /run type tmpfs (rw,nosuid,nodev,mode=3D755)
>> tmpfs on /sys/fs/cgroup type tmpfs (ro,nosuid,nodev,noexec,mode=3D755)
>> overlay on /etc type overlay
>> (rw,relatime,lowerdir=3D/tmp/lower/etc,upperdir=3D/tmp/upper/etc,workdir=
=3D/tmp/upper/work/etc)
>> tmpfs on /run/user/0 type tmpfs
>> (rw,nosuid,nodev,relatime,size=3D23840k,mode=3D700)
>>
>> On the NFS mounted system, I see these:
>>
>>
>>
>> $ mount | grep tmp
>> devtmpfs on /dev type devtmpfs
>> (rw,relatime,size=3D118180k,nr_inodes=3D29545,mode=3D755)
>> tmpfs on /dev/shm type tmpfs (rw,nosuid,nodev)
>> tmpfs on /run type tmpfs (rw,nosuid,nodev,mode=3D755)
>> tmpfs on /sys/fs/cgroup type tmpfs (ro,nosuid,nodev,noexec,mode=3D755)
>> tmpfs on /tmp type tmpfs (rw,nosuid,nodev)
>> tmpfs on /var/volatile type tmpfs (rw,relatime)
>> tmpfs on /run/user/0 type tmpfs
>> (rw,nosuid,nodev,relatime,size=3D23840k,mode=3D700)
>>
>> As you can see, NFS has these extra mounts:
>>
>>
>>
>> tmpfs on /tmp type tmpfs (rw,nosuid,nodev)
>>
>> tmpfs on /var/volatile type tmpfs (rw,relatime)
>>
>>
>>
>> I've tried reverting a few commits that may be related, but I haven't ha=
d
>> any luck working out things have changed, eg:
>>
>>
>>
>> c4acf1b531  2018-10-19  volatile-binds: use overlayfs if available
>>                [Matt Hoosier]
>>
>>
>>
>> Advice would be appreciated. Are there any particular areas I should be
>> looking to work out what's going wrong?
>>
>>
>>
>> Kind regards,
>>
>> Ryan.
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>

--000000000000c757c6058fafe3a9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Fri, 2 Aug 2019 at 21:20, Ryan Har=
kin &lt;<a href=3D"mailto:ryan.harkin@linaro.org">ryan.harkin@linaro.org</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><di=
v dir=3D"ltr"><div>Hi Carsten,</div><div><br></div>Thanks for your help.<di=
v><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On F=
ri, 2 Aug 2019 at 20:42, Stelling2 Carsten &lt;<a href=3D"mailto:Carsten.St=
elling2@goerlitz.com" target=3D"_blank">Carsten.Stelling2@goerlitz.com</a>&=
gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">





<div lang=3D"DE">
<div class=3D"gmail-m_-7991213110685431851gmail-m_-3697380400908974868WordS=
ection1">
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:Arial,sans=
-serif;color:rgb(31,73,125)">Hi Ryan,<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:Arial,sans=
-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif;color:rgb(31,73,125)">Regarding to timesyncd, have a =
look at
<a href=3D"https://wiki.archlinux.org/index.php/systemd-timesyncd" target=
=3D"_blank">https://wiki.archlinux.org/index.php/systemd-timesyncd</a>, esp=
ecially the section<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif;color:rgb(31,73,125)">=E2=80=9CNote: The service writ=
es to a local file /var/lib/systemd/timesync/clock with every synchronizati=
on.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif;color:rgb(31,73,125)">This location is hard-coded and=
 cannot be changed. This may be problematic for running off<u></u><u></u></=
span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif;color:rgb(31,73,125)">read-only root partition or try=
ing to minimize writes to an SD card.=E2=80=9D</span></p></div></div></bloc=
kquote><div><br></div><div>Yes, this looks like it is my problem. I experim=
ented with timesync, and by making /var/lib and a few other places writable=
, I&#39;m able to start it manually, but not via systemd, which I think is =
experiencing other issues with the read-only rootfs.</div><div><br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex"><div lang=3D"DE"><div class=
=3D"gmail-m_-7991213110685431851gmail-m_-3697380400908974868WordSection1"><=
p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fam=
ily:Arial,sans-serif;color:rgb(31,73,125)"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif;color:rgb(31,73,125)">See also
<a href=3D"https://github.com/systemd/systemd/issues/5610" target=3D"_blank=
">https://github.com/systemd/systemd/issues/5610</a> for your problem with =
systemd-resolved.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif;color:rgb(31,73,125)">According to this, /var, /var/t=
mp, /run, and /tmp should be writable.</span><span style=3D"color:rgb(31,73=
,125);font-family:Arial,sans-serif;font-size:10pt">=C2=A0</span></p></div><=
/div></blockquote><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div la=
ng=3D"DE"><div class=3D"gmail-m_-7991213110685431851gmail-m_-36973804009089=
74868WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif;color:rgb(31,73,125)">I think the problem is not Yoct=
o specific, but possibly I overlook something.</span></p></div></div></bloc=
kquote><div><br></div><div><div>Again, I think you&#39;re right. I need to =
have these areas writable from boot. But I don&#39;t know how.</div></div><=
div><br></div><div>I=C2=A0 suppose my problem is that these areas used to b=
e writable when I was using Sumo, but moving to Warrior has caused somethin=
g to change. I&#39;m wondering what extra steps I need to do in Warrior to =
ensure that all these things are mounted with tmpfs as before. I expect my =
Sumo recipes worked through luck more than design, and now something has ch=
anged, I need to improve them.</div><div><br></div><div>It is rather diffic=
ult to work out what the relevant changes are.</div></div></div></div></blo=
ckquote><div><br></div><div>I still don&#39;t know what has changed between=
 Sumo and Warrior so it works on Sumo, but not on Warrior. However, I tried=
 a different board (WaRP7) with Warrior, and read-only works as expected.=
=C2=A0</div><div><br></div><div>I tried removing the read-only flag from my=
 malfunctioning board setup, and I still have the problems. Of course, the =
quirky system I&#39;m fixing boots in a more complex way that WaRP7. There =
is a service that boots at startup, with a script to switch-root from initr=
amfs to an UBI partition. The UBI partition is being mounted read-only in t=
he switch-root script. If I change this to read-write, everything works.</d=
iv><div><br></div><div>I think one fix for me is to have my script manually=
 mount /tmp, /var/volatile, and so on, as tmpfs. It doesn&#39;t explain wha=
t&#39;s changed, however. Either way, the fault appears to be in my environ=
ment, and Sumo possibly worked with luck.</div><div><br></div><div>Regards,=
</div><div>Ryan.</div><div><br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex"><div dir=3D"ltr"><div><div class=3D"gmail_quote"><div><br></div=
><div>Kind regards,</div><div>Ryan.</div><div><br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div lang=3D"DE"><div class=3D"gmail-m_-79=
91213110685431851gmail-m_-3697380400908974868WordSection1"><p class=3D"MsoN=
ormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-family:Arial,sans-=
serif;color:rgb(31,73,125)"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif;color:rgb(31,73,125)">Best regards,<u></u><u></u></sp=
an></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif;color:rgb(31,73,125)">Carsten<u></u><u></u></span></p=
>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10pt;font-family:Tahoma,=
sans-serif">Von:</span></b><span style=3D"font-size:10pt;font-family:Tahoma=
,sans-serif"> <a href=3D"mailto:yocto-bounces@yoctoproject.org" target=3D"_=
blank">yocto-bounces@yoctoproject.org</a> [mailto:<a href=3D"mailto:yocto-b=
ounces@yoctoproject.org" target=3D"_blank">yocto-bounces@yoctoproject.org</=
a>]
<b>Im Auftrag von </b>Ryan Harkin<br>
<b>Gesendet:</b> Freitag, 2. August 2019 13:09<br>
<b>An:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yoct=
o@yoctoproject.org</a><br>
<b>Cc:</b> openembedded<br>
<b>Betreff:</b> [yocto] /var/volatile not mounted as tmpfs on read-only roo=
tfs when migrating to Warrior<u></u><u></u></span></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<p class=3D"MsoNormal">Hi,<u></u><u></u></p>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">I have a working system based on Sumo. The system bo=
ots with a read-only rootfs, then applies are read-write overlay for /etc.<=
u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">When I migrate to Warrior, systemd-resolved fails to=
 start. If I mount the same rootfs via NFS, it starts and works fine.=C2=A0=
=C2=A0systemd-timesyncd is also failing, but I haven&#39;t looked into that=
 yet. It also works fine on the NFS mounted system.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">The resolve problem seems to be caused by two things=
:<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">=C2=A0 =C2=A0 - /var/volatile is read-only<u></u><u>=
</u></p>
</div>
<div>
<p class=3D"MsoNormal">=C2=A0 =C2=A0 - /run/systemd/resolve has the wrong o=
wnership<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">=C2=A0 =C2=A0 =C2=A0 drwxr-xr-x =C2=A02 systemd-netw=
ork systemd-journal =C2=A080 Jul 12 16:23 resolve/<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">=C2=A0 =C2=A0 =C2=A0 I think this permissions proble=
m may be a result of the /var/volatile mounting<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">=C2=A0 =C2=A0 =C2=A0 problems; it looks fine on the =
NFS mounted system.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">If I manually mount /var/volatile (it&#39;s in fstab=
) and change the ownership on /run/systemd/resolve, the service starts just=
 fine.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">I also notice that /tmp is not mounted at all, which=
 may be related.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Here are the various tmp mount points on my read-onl=
y rootfs:<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">$ mount | grep tmp<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">devtmpfs on /dev type devtmpfs (rw,nosuid,size=3D112=
036k,nr_inodes=3D28009,mode=3D755)<br>
tmpfs on /dev/shm type tmpfs (rw,nosuid,nodev)<br>
tmpfs on /run type tmpfs (rw,nosuid,nodev,mode=3D755)<br>
tmpfs on /sys/fs/cgroup type tmpfs (ro,nosuid,nodev,noexec,mode=3D755)<br>
overlay on /etc type overlay (rw,relatime,lowerdir=3D/tmp/lower/etc,upperdi=
r=3D/tmp/upper/etc,workdir=3D/tmp/upper/work/etc)<br>
tmpfs on /run/user/0 type tmpfs (rw,nosuid,nodev,relatime,size=3D23840k,mod=
e=3D700)<br>
<br>
On the NFS mounted system, I see these:<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">$ mount | grep tmp<br>
devtmpfs on /dev type devtmpfs (rw,relatime,size=3D118180k,nr_inodes=3D2954=
5,mode=3D755)<br>
tmpfs on /dev/shm type tmpfs (rw,nosuid,nodev)<br>
tmpfs on /run type tmpfs (rw,nosuid,nodev,mode=3D755)<br>
tmpfs on /sys/fs/cgroup type tmpfs (ro,nosuid,nodev,noexec,mode=3D755)<br>
tmpfs on /tmp type tmpfs (rw,nosuid,nodev)<br>
tmpfs on /var/volatile type tmpfs (rw,relatime)<br>
tmpfs on /run/user/0 type tmpfs (rw,nosuid,nodev,relatime,size=3D23840k,mod=
e=3D700)<br>
<br>
As you can see, NFS has these extra mounts:<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<p class=3D"MsoNormal">tmpfs on /tmp type tmpfs (rw,nosuid,nodev)<u></u><u>=
</u></p>
<div>
<p class=3D"MsoNormal">tmpfs on /var/volatile type tmpfs (rw,relatime)<u></=
u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">I&#39;ve tried reverting a few commits that may be r=
elated, but I haven&#39;t had any luck working out things have changed, eg:=
<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">c4acf1b531 =C2=A02018-10-19 =C2=A0volatile-binds: us=
e overlayfs if available =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0[Matt Hoosier]=C2=A0<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Advice would be appreciated. Are there any particula=
r areas I should be looking to work out what&#39;s going wrong?<u></u><u></=
u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Kind regards,<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Ryan.<u></u><u></u></p>
</div>
</div>
</div>
</div>

-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div></div></div>
</blockquote></div></div>

--000000000000c757c6058fafe3a9--
