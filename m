Return-Path: <john.finley@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9E744E00CC4; Tue, 26 Sep 2017 10:40:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.169 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (john.finley[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f169.google.com (mail-io0-f169.google.com
	[209.85.223.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C83DE00C3A
	for <yocto@yoctoproject.org>; Tue, 26 Sep 2017 10:40:54 -0700 (PDT)
Received: by mail-io0-f169.google.com with SMTP id k101so13493115iod.0
	for <yocto@yoctoproject.org>; Tue, 26 Sep 2017 10:40:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=VJwvruKiPmUWibv4Y4Pssy/1JA/MRvWKbEUR0G1KcuI=;
	b=ezpsPwRZO/6J+fvEzrvi9YN4M6UiFemBoSE5RwVWw8nNEW6mtTPSSX5kQq314ctGQh
	hvlTUsUMApBM2sD6x9T8sZgS31KaaELYYZ3NQu6/z++4idzRVTR9/Jh33TgrGNfOTUG1
	A31FnVyaQs5MujWbbiY26xiPPB4SE9Oi87hrMbPhZsuvBPExI/i9rUH9Sy3ghMYYI8It
	SQmL+GiC8vBi4aD36Bq/kvqjj6zlfnBI0FtQWbOfaRDZADPR8j+SshqXTVCEDurcjHOU
	f91PC+bn3sZoBOS/FymZhIoIYiE2Q81kbPrcLDmlwzXMjGXUPyRyPdZ3Bm60eG1wV5l1
	l0ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=VJwvruKiPmUWibv4Y4Pssy/1JA/MRvWKbEUR0G1KcuI=;
	b=VbF5QpCTTL7J8Uj6CtKDlt9734dLYMmLUMrO674v4/kT+oWAMsbXgGP+XxZArqPNGk
	fAQ9VLMzwNSGGpVzp/7D0m+eWk8wAOmEihEZDnIJTonuP6R0CD2ODqknsOrxUNfXJaki
	6/9LAixv7Ak+QvHQDd0Alg4a1MvhceUblkqDylw40byw75KRGxC/8b1DtO7miDPYJ4vI
	EPuqXtCmJemk/9vJBTZeg5Ghe0vp97B4E7Xr3Bet9Fu/mJ9GovniZo43kG2OZNIpC9sI
	Xq+2KefLXQmYTc5IAK2ahcDkZsfooCFYwp/txZQfnGm/eqkZxX1Jm186Jh5HwDLjOdme
	XulQ==
X-Gm-Message-State: AHPjjUgf65j8DM57DgtoqXZxjqcfmawr7yp1PfPVqXQXS2HbpjInnZxU
	uHq0mqV6QKsObzS0XjF2hxplyF7hozoCnEtYz2pywdzr
X-Google-Smtp-Source: AOwi7QAgkmmzzaGHRX4kTlQohCJzc0W4Ois0swiCGqdUfF4pX8CVMQHev3N4hkZlNTH/m/MrsadJaaD8dIgQ6yWKDx0=
X-Received: by 10.107.68.6 with SMTP id r6mr12419132ioa.282.1506447653659;
	Tue, 26 Sep 2017 10:40:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.2.3.26 with HTTP; Tue, 26 Sep 2017 10:40:53 -0700 (PDT)
In-Reply-To: <01551177a97b480a8c267aefbf2c6af2@HIBDWSMB02.ad.harman.com>
References: <e1e5dcc7a72a4e02bf809951ab67f555@HIBDWSMB02.ad.harman.com>
	<24658a3e-c369-b735-fc25-97076a7ad33f@embexus.com>
	<01551177a97b480a8c267aefbf2c6af2@HIBDWSMB02.ad.harman.com>
From: John Finley <john.finley@gmail.com>
Date: Tue, 26 Sep 2017 10:40:53 -0700
Message-ID: <CACwBRSDyiG5q=gp8_-Zwsrfyap1N-ouZ1YY3BtwUq4OxofP8ng@mail.gmail.com>
To: "Kumar, Shrawan" <Shrawan.Kumar@harman.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [EXTERNAL] Re: rootfs encryption support
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
X-List-Received-Date: Tue, 26 Sep 2017 17:40:55 -0000
Content-Type: multipart/alternative; boundary="089e0825fdc044e7fc055a1b2dcc"

--089e0825fdc044e7fc055a1b2dcc
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 26, 2017 at 5:06 AM, Kumar, Shrawan <Shrawan.Kumar@harman.com>
wrote:

> When I execute the cryptsetup manually (with sudo ) on the host , I could
> see " demomap" getting populated . This confirms that it works on  host
> when I run manually and that HOST configuration is OK .
> However this is not happing under yocto fakeroot environment and it says =
"
> Cannot initialize device-mapper. Is dm_mod kernel module loaded?*"
>
> @:~$ ls -l /dev/mapper/
> total 0
> crw------- 1 root root 10, 236 Sep 15 02:26 control
> lrwxrwxrwx 1 root root       7 Sep 26 11:56 demomap -> ../dm-7
> lrwxrwxrwx 1 root root       7 Sep 15 02:26 vg00-lv2swap -> ../dm-6
> lrwxrwxrwx 1 root root       7 Sep 15 02:26 vg00-lvdocker -> ../dm-1
> lrwxrwxrwx 1 root root       7 Sep 15 02:26 vg00-lvhome -> ../dm-3
> lrwxrwxrwx 1 root root       7 Sep 15 02:26 vg00-lvroot -> ../dm-2
> lrwxrwxrwx 1 root root       7 Sep 15 02:26 vg00-lvswap -> ../dm-5
> lrwxrwxrwx 1 root root       7 Sep 15 02:26 vg00-lvvar -> ../dm-4
> lrwxrwxrwx 1 root root       7 Sep 15 02:26 vgdata-lvdata -> ../dm-0
>
>
> off course , dm_mod which I could confirm with emty output of  lsmod |
> grep dm_mod
> But then how does it works on host when I run cryptsetup manually ?
>
> I could see " dm_crypt" module is loaded .
>

I could not get around needing sudo, and ended up enabling passwordless
sudo for the user doing the build. Inside the fakerooted function, pieces
that don't require sudo look like this:
    cryptsetup luksFormat ...
while others that do require sudo look like this:
    PSEUDO_UNLOAD=3D1 sudo cryptsetup open ...
The PSEUDO_UNLOAD might just be cosmetic in that it prevents a warning
about not being able to load libpseudo.so; I don't remember if it's
actually required. But it does make it clear that the command done by the
sudo is not in the fakeroot environment.

The root of the problem is that going through device mapper requires real
root, fakeroot doesn't give you that, and luks (as far as I can tell) can
only work through device mapper. You might be about to write your own luks
header with the keys, encrypt it sector-by-sector yourself, blah blah blah.

I *did* want to see if I could avoid luks altogether: encrypt it raw using
an image postprocessing command, then at runtime map it with dm-crypt (vs.
luks), but never got around to it. That should be possible without sudo,
and not having luks seems like it would be okay for many embedded uses.


> -----Original Message-----
> From: Ayoub Zaki [mailto:ayoub.zaki@embexus.com]
> Sent: Tuesday, September 26, 2017 4:17 PM
> To: Kumar, Shrawan <Shrawan.Kumar@harman.com>
> Subject: [EXTERNAL] Re: [yocto] rootfs encryption support
>
>
>
> On 26.09.2017 12:29, Kumar, Shrawan wrote:
> > To add further information to the query , I am executing  "cryptsetup"
> >  from a recipe as below : (/Yocto 2.0.2)/
> >
> > fakeroot do_install() {
> >
> >                cryptsetup --type=3Dplain open hello.enc demomap <
> > dm-crypt-key
> >
> > }
> >
> > Additional debug log :
> >
> > + do_install
> >
> > | + cryptsetup --type=3Dplain open
> > /path_to/tmp/work/cortexa9hf-vfp-neon-elina-linux-gnueabi/DM-CryptSetu
> > p/1.0-r0/hello.enc
> > demomap
> >
> > | *Cannot initialize device-mapper. Is dm_mod kernel module loaded?*
> >
> > |
> >
> > | Cannot initialize device-mapper. Is dm_mod kernel module loaded?
> >
> > | + bb_exit_handler
> >
> *||**Your Host kernel need to have support for DM-Crypt enabled, you can
> autoload the corresponding kernel module by adding to your build host
> modules configuration:
>
> $ sudo sh -c 'echo dm_mod > /etc/modules-load.d/dm_mod.conf'*
> ||
> **
> >
> > Ideally , I was under impression that "fakeroot" shall have allowed to
> > me achieve the goal.
> >
> > Thanks & Regads
> >
> > Shrawan
> >
> > *From:* Kumar, Shrawan
> > *Sent:* Tuesday, September 26, 2017 10:56 AM
> > *To:* 'yocto@yoctoproject.org' <yocto@yoctoproject.org>
> > *Subject:* rootfs encryption support
> >
> > Hello Team ,
> >
> > Is it possible to get encrypted rootfs during image build  ?
> >
> > Currently , I am running "*cryptsetup*" (as sudo) *manually*   after
> > the final image(rootfs.ext4) is produced  . The idea is to get this
> > done within yocto environment without sudo problem .
> >
> > Thanks and Regards
> >
> > Shrawan
> >
> >
> >
>
> --
> Ayoub Zaki
> Embedded Systems Consultant
>
> Vaihinger Stra=C3=9Fe 2/1
> D-71634 Ludwigsburg
>
> Tel.     : +4971415074546
> Mobile   : +4917662901545
> Email    : ayoub.zaki@embexus.com
> Homepage : https://clicktime.symantec.com/a/1/
> 8fQ575pM7qUybRZBFjM9C7WPhR2dXT1R4k3d_4A9BOc=3D?d=3DTm5cGpFBEW_vK6_eBrh-ly=
BQV_
> R1miTaoqmkTnsHhnTjNs9fOY92cq9wfN5CbL76p9_yEC-
> LnqRTAKlF1fzjPCBupycsjT3GP6G75yD1UVlxZ7c2mqLgkyrhClC1V-
> 74zP2Zbhs8BAnSEhpjJoqPP_0JU1Lzuo-iK8U_D7B1zQes8b4JBgf3DPo21HUsMa2qEG
> MbeqEDq7LU4y2SXKadgb1xcCNmOTvQIJ9LchpVyTITF0Qw2c5M1--o9oWn7FlThc-
> KBs5TLfBKAIexE3ndzKZOdu9D2NlCmcrEM7q1Oe8sarufZ71B8FsfvU5lT_
> 9gB-hfFD0PEgEJY8VxBGtY4-tLfyAnaY8Z-BlIlSDBgZeorcaKkAzCj4nQTbXIWTT
> IYg%3D%3D&u=3Dhttps%3A%2F%2Fembexus.com
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--089e0825fdc044e7fc055a1b2dcc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On T=
ue, Sep 26, 2017 at 5:06 AM, Kumar, Shrawan <span dir=3D"ltr">&lt;<a href=
=3D"mailto:Shrawan.Kumar@harman.com" target=3D"_blank">Shrawan.Kumar@harman=
.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex">When I execute the cryptsetup manually (with sudo ) on the host , I co=
uld see &quot; demomap&quot; getting populated . This confirms that it work=
s on=C2=A0 host when I run manually and that HOST configuration is OK .<br>
However this is not happing under yocto fakeroot environment and it says &q=
uot; Cannot initialize device-mapper. Is dm_mod kernel module loaded?*&quot=
;<br>
<br>
@:~$ ls -l /dev/mapper/<br>
total 0<br>
crw------- 1 root root 10, 236 Sep 15 02:26 control<br>
lrwxrwxrwx 1 root root=C2=A0 =C2=A0 =C2=A0 =C2=A07 Sep 26 11:56 demomap -&g=
t; ../dm-7<br>
lrwxrwxrwx 1 root root=C2=A0 =C2=A0 =C2=A0 =C2=A07 Sep 15 02:26 vg00-lv2swa=
p -&gt; ../dm-6<br>
lrwxrwxrwx 1 root root=C2=A0 =C2=A0 =C2=A0 =C2=A07 Sep 15 02:26 vg00-lvdock=
er -&gt; ../dm-1<br>
lrwxrwxrwx 1 root root=C2=A0 =C2=A0 =C2=A0 =C2=A07 Sep 15 02:26 vg00-lvhome=
 -&gt; ../dm-3<br>
lrwxrwxrwx 1 root root=C2=A0 =C2=A0 =C2=A0 =C2=A07 Sep 15 02:26 vg00-lvroot=
 -&gt; ../dm-2<br>
lrwxrwxrwx 1 root root=C2=A0 =C2=A0 =C2=A0 =C2=A07 Sep 15 02:26 vg00-lvswap=
 -&gt; ../dm-5<br>
lrwxrwxrwx 1 root root=C2=A0 =C2=A0 =C2=A0 =C2=A07 Sep 15 02:26 vg00-lvvar =
-&gt; ../dm-4<br>
lrwxrwxrwx 1 root root=C2=A0 =C2=A0 =C2=A0 =C2=A07 Sep 15 02:26 vgdata-lvda=
ta -&gt; ../dm-0<br>
<br>
<br>
off course , dm_mod which I could confirm with emty output of=C2=A0 lsmod |=
 grep dm_mod<br>
But then how does it works on host when I run cryptsetup manually ?<br>
<br>
I could see &quot; dm_crypt&quot; module is loaded .<br></blockquote><div><=
br></div><div>I could not get around needing sudo, and ended up enabling pa=
sswordless sudo for the user doing the build. Inside the fakerooted functio=
n, pieces that don&#39;t require sudo look like this:</div><div>=C2=A0 =C2=
=A0 cryptsetup luksFormat ...</div><div>while others that do require sudo l=
ook like this:<br></div><div><div>=C2=A0 =C2=A0 PSEUDO_UNLOAD=3D1 sudo cryp=
tsetup open ...</div><div>The PSEUDO_UNLOAD might just be cosmetic in that =
it prevents a warning about not being able to load libpseudo.so; I don&#39;=
t remember if it&#39;s actually required. But it does make it clear that th=
e command done by the sudo is not in the fakeroot environment.<br></div></d=
iv><div><br></div><div>The root of the problem is that going through device=
 mapper requires real root, fakeroot doesn&#39;t give you that, and luks (a=
s far as I can tell) can only work through device mapper. You might be abou=
t to write your own luks header with the keys, encrypt it sector-by-sector =
yourself, blah blah blah.<br></div><div><br></div><div>I *did* want to see =
if I could avoid luks altogether: encrypt it raw using an image postprocess=
ing command, then at runtime map it with dm-crypt (vs. luks), but never got=
 around to it. That should be possible without sudo, and not having luks se=
ems like it would be okay for many embedded uses.</div><div><br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex">
<span class=3D"gmail-"><br>
-----Original Message-----<br>
From: Ayoub Zaki [mailto:<a href=3D"mailto:ayoub.zaki@embexus.com">ayoub.za=
ki@embexus.com</a><wbr>]<br>
Sent: Tuesday, September 26, 2017 4:17 PM<br>
To: Kumar, Shrawan &lt;<a href=3D"mailto:Shrawan.Kumar@harman.com">Shrawan.=
Kumar@harman.com</a>&gt;<br>
Subject: [EXTERNAL] Re: [yocto] rootfs encryption support<br>
<br>
<br>
<br>
On 26.09.2017 12:29, Kumar, Shrawan wrote:<br>
</span><span class=3D"gmail-">&gt; To add further information to the query =
, I am executing =C2=A0&quot;cryptsetup&quot;<br>
</span>&gt; =C2=A0from a recipe as below : (/Yocto 2.0.2)/<br>
<span class=3D"gmail-">&gt;<br>
&gt; fakeroot do_install() {<br>
&gt;<br>
&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 cryptsetup --type=3Dplain open hello.enc demomap &lt;<br>
&gt; dm-crypt-key<br>
&gt;<br>
&gt; }<br>
&gt;<br>
&gt; Additional debug log :<br>
&gt;<br>
&gt; + do_install<br>
&gt;<br>
&gt; | + cryptsetup --type=3Dplain open<br>
&gt; /path_to/tmp/work/cortexa9hf-<wbr>vfp-neon-elina-linux-gnueabi/<wbr>DM=
-CryptSetu<br>
&gt; p/1.0-r0/hello.enc<br>
&gt; demomap<br>
&gt;<br>
</span>&gt; | *Cannot initialize device-mapper. Is dm_mod kernel module loa=
ded?*<br>
<span class=3D"gmail-">&gt;<br>
&gt; |<br>
&gt;<br>
&gt; | Cannot initialize device-mapper. Is dm_mod kernel module loaded?<br>
&gt;<br>
&gt; | + bb_exit_handler<br>
&gt;<br>
</span>*||**Your Host kernel need to have support for DM-Crypt enabled, you=
 can autoload the corresponding kernel module by adding to your build host =
modules configuration:<br>
<br>
$ sudo sh -c &#39;echo dm_mod &gt; /etc/modules-load.d/dm_mod.<wbr>conf&#39=
;*<br>
||<br>
**<br>
<span class=3D"gmail-">&gt;<br>
&gt; Ideally , I was under impression that &quot;fakeroot&quot; shall have =
allowed to<br>
&gt; me achieve the goal.<br>
&gt;<br>
&gt; Thanks &amp; Regads<br>
&gt;<br>
&gt; Shrawan<br>
&gt;<br>
</span><span class=3D"gmail-">&gt; *From:* Kumar, Shrawan<br>
&gt; *Sent:* Tuesday, September 26, 2017 10:56 AM<br>
&gt; *To:* &#39;<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoprojec=
t.org</a>&#39; &lt;<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctopro=
ject.org</a>&gt;<br>
</span>&gt; *Subject:* rootfs encryption support<br>
<span class=3D"gmail-">&gt;<br>
&gt; Hello Team ,<br>
&gt;<br>
&gt; Is it possible to get encrypted rootfs during image build =C2=A0?<br>
&gt;<br>
</span>&gt; Currently , I am running &quot;*cryptsetup*&quot; (as sudo) *ma=
nually* =C2=A0=C2=A0after<br>
<span class=3D"gmail-">&gt; the final image(rootfs.ext4) is produced =C2=A0=
. The idea is to get this<br>
&gt; done within yocto environment without sudo problem .<br>
&gt;<br>
&gt; Thanks and Regards<br>
&gt;<br>
&gt; Shrawan<br>
&gt;<br>
&gt;<br>
&gt;<br>
<br>
</span>--<br>
Ayoub Zaki<br>
Embedded Systems Consultant<br>
<br>
Vaihinger Stra=C3=9Fe 2/1<br>
D-71634 Ludwigsburg<br>
<br>
Tel.=C2=A0 =C2=A0 =C2=A0: +4971415074546<br>
Mobile=C2=A0 =C2=A0: +4917662901545<br>
Email=C2=A0 =C2=A0 : <a href=3D"mailto:ayoub.zaki@embexus.com">ayoub.zaki@e=
mbexus.com</a><br>
Homepage : <a href=3D"https://clicktime.symantec.com/a/1/8fQ575pM7qUybRZBFj=
M9C7WPhR2dXT1R4k3d_4A9BOc=3D?d=3DTm5cGpFBEW_vK6_eBrh-lyBQV_R1miTaoqmkTnsHhn=
TjNs9fOY92cq9wfN5CbL76p9_yEC-LnqRTAKlF1fzjPCBupycsjT3GP6G75yD1UVlxZ7c2mqLgk=
yrhClC1V-74zP2Zbhs8BAnSEhpjJoqPP_0JU1Lzuo-iK8U_D7B1zQes8b4JBgf3DPo21HUsMa2q=
EGMbeqEDq7LU4y2SXKadgb1xcCNmOTvQIJ9LchpVyTITF0Qw2c5M1--o9oWn7FlThc-KBs5TLfB=
KAIexE3ndzKZOdu9D2NlCmcrEM7q1Oe8sarufZ71B8FsfvU5lT_9gB-hfFD0PEgEJY8VxBGtY4-=
tLfyAnaY8Z-BlIlSDBgZeorcaKkAzCj4nQTbXIWTTIYg%3D%3D&amp;u=3Dhttps%3A%2F%2Fem=
bexus.com" rel=3D"noreferrer" target=3D"_blank">https://clicktime.symantec.=
<wbr>com/a/1/<wbr>8fQ575pM7qUybRZBFjM9C7WPhR2dXT<wbr>1R4k3d_4A9BOc=3D?d=3DT=
m5cGpFBEW_<wbr>vK6_eBrh-lyBQV_<wbr>R1miTaoqmkTnsHhnTjNs9fOY92cq9w<wbr>fN5Cb=
L76p9_yEC-<wbr>LnqRTAKlF1fzjPCBupycsjT3GP6G75<wbr>yD1UVlxZ7c2mqLgkyrhClC1V-=
<wbr>74zP2Zbhs8BAnSEhpjJoqPP_<wbr>0JU1Lzuo-iK8U_<wbr>D7B1zQes8b4JBgf3DPo21H=
UsMa2qEG<wbr>MbeqEDq7LU4y2SXKadgb1xcCNmOTvQ<wbr>IJ9LchpVyTITF0Qw2c5M1--<wbr=
>o9oWn7FlThc-<wbr>KBs5TLfBKAIexE3ndzKZOdu9D2NlCm<wbr>crEM7q1Oe8sarufZ71B8Fs=
fvU5lT_<wbr>9gB-hfFD0PEgEJY8VxBGtY4-<wbr>tLfyAnaY8Z-<wbr>BlIlSDBgZeorcaKkAz=
Cj4nQTbXIWTT<wbr>IYg%3D%3D&amp;u=3Dhttps%3A%2F%<wbr>2Fembexus.com</a><br>
<div class=3D"gmail-HOEnZb"><div class=3D"gmail-h5"><br>
--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</div></div></blockquote></div><br></div></div>

--089e0825fdc044e7fc055a1b2dcc--
