Return-Path: <antonius.riko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 72691E009A4; Wed,  9 Aug 2017 03:27:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.53 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.53 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (antonius.riko[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f53.google.com (mail-oi0-f53.google.com
	[209.85.218.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 194C5E0090A
	for <yocto@yoctoproject.org>; Wed,  9 Aug 2017 03:27:19 -0700 (PDT)
Received: by mail-oi0-f53.google.com with SMTP id x3so57411010oia.1
	for <yocto@yoctoproject.org>; Wed, 09 Aug 2017 03:27:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=kYrOtpG1iCpyrxn1HFDc1BVSU0mYmbxM/GfXNBRDi1Q=;
	b=nAiRpZMOCmBPFt3RX0QL6ni5AmQfJMSCvYA4g9FMl2Q07pJLoahC1fOR/6n3Vja6lB
	SHWSHp4k3I5DzOEeGHrv0fBaI357bWrZSgtJkfsRFWjkIvXk+zzjT3guBsGQyJ23on3l
	a6337ZraS9F7llUnsMQ/EpDcb5Z4dhjJmgxUCTF/7/kGGToi1hz+7K8bTz3C2WqxaGsb
	cOyuoQAdmCNebtSUNa795YHAsVcyRXK2xIEn2KvnigqBgfulsuxcVZHBnJKpQIMNftKH
	2C7fxLgW5k7O/MPPhWX2BMo3vpY3PHimnVY7p9goV79412ZDaGrwybv5H9ac021e1TWv
	pxWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=kYrOtpG1iCpyrxn1HFDc1BVSU0mYmbxM/GfXNBRDi1Q=;
	b=ROdlvKLjclpRh2qKFvz5cjBNkj9VpNegiBFCMC/6BMmdwTf2rhBKzTFsmhE5kfSIB3
	hcgxBEpis+jGHYKMLNjUjzjpU3eTRRf1NNhb+WGKhi36gjb0sby5Nf1vpLisLprPdL5o
	dI9+DfC5N0wmCTX2d086UgxyedFqigauyVMAovl/DqhO63zRkJDl4D4o5f+Myi1YEcWM
	9S6LX1yXdvB8Y1mTzoDreSmDWYrT+ZKGxMXT7ZUc20A9UpOFkSSeh8KZo/Tv+G5VK5dQ
	A5SBQITIk+cxUw786/DTItKLGcBd7ZETo4NCwEjMz6kbBAi6OUBddiUvM3lPRizejH3b
	Jfmw==
X-Gm-Message-State: AHYfb5g1jMD/Jb2Fj1aK8oNLIBDIJWozYzXfm9Dln0smzDwjx9vPb6F4
	ZF471E/iH570IbJRhMnZ0jZsfrKR/A==
X-Received: by 10.202.68.2 with SMTP id r2mr4285787oia.225.1502274439019; Wed,
	09 Aug 2017 03:27:19 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.74.44.5 with HTTP; Wed, 9 Aug 2017 03:27:18 -0700 (PDT)
Received: by 10.74.44.5 with HTTP; Wed, 9 Aug 2017 03:27:18 -0700 (PDT)
In-Reply-To: <CAJTo0LbM1Ly6aFCeq7FTsOiCpmhSw_PoRRu-3NmMbKx1CXtAkQ@mail.gmail.com>
References: <759e84aa-b429-d9f8-bd71-aeef9fbe7bfe@gmail.com>
	<CAJTo0Lb41N7A_dZMHKHoBAEDm0KHAW2K-R-TWvEKxbsygbyK=g@mail.gmail.com>
	<adde6220-1d6d-103d-b9ff-cd39d32bf943@gmail.com>
	<CAJTo0LbM1Ly6aFCeq7FTsOiCpmhSw_PoRRu-3NmMbKx1CXtAkQ@mail.gmail.com>
From: Riko Ho <antonius.riko@gmail.com>
Date: Wed, 9 Aug 2017 18:27:18 +0800
Message-ID: <CAByQQ_q5s2cWY6FJVLnSaygmS1ytcYTgLAHfR=q_p3YNwQogzA@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "N:" <yocto@yoctoproject.org>
Subject: Re: bitbake error ?
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
X-List-Received-Date: Wed, 09 Aug 2017 10:27:21 -0000
Content-Type: multipart/alternative; boundary="001a113d29d44b0fed05564f86ac"

--001a113d29d44b0fed05564f86ac
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

so what s the issue=EF=BC=9F my connection is working. is it related with
/etc/hosts?
thanks
On Aug 9, 2017 4:38 PM, "Burton, Ross" <ross.burton@intel.com> wrote:

> Yep.  That's your problem.
>
> $ wget https://www.example.com/
> --2017-08-09 09:37:43--  https://www.example.com/
> Resolving www.example.com... 93.184.216.34, 2606:2800:220:1:248:1893:25c8=
:
> 1946
> Connecting to www.example.com|93.184.216.34|:443... connected.
> HTTP request sent, awaiting response... 200 OK
> Length: 1270 (1.2K) [text/html]
> Saving to: =E2=80=98index.html=E2=80=99
>
> index.html          100%[=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D>]   1.24K  --.-KB/s    in 0s
>
> 2017-08-09 09:37:44 (15.3 MB/s) - =E2=80=98index.html=E2=80=99 saved [127=
0/1270]
>
> Works for me.  Your network or wget is broken, and that is unrelated to
> bitbake/yocto/etc.
>
> Ross
>
> On 9 August 2017 at 09:34, Riko <antonius.riko@gmail.com> wrote:
>
>> This one ?
>>
>> bianchi@bianchi-HP-Pavilion-dv6-Notebook-PC:~/poky/build$ wget
>> https://www.example.com/
>> --2017-08-09 16:33:05--  https://www.example.com/
>> Resolving www.example.com (www.example.com)... failed: Name or service
>> not known.
>> wget: unable to resolve host address 'www.example.com=E2=80=99
>>
>>
>> On 09/08/17 16:31, Burton, Ross wrote:
>>
>> For some reason, bitbake can't do "wget https://www.example.com/".   Try
>> running that command outside of bitbake and seeing if it returns any
>> errors.
>>
>> Ross
>>
>> On 9 August 2017 at 09:29, Riko <antonius.riko@gmail.com> wrote:
>>
>>> Dear Yocto Member,
>>>
>>>
>>> I have downloaded fresh install of yocto but got error, here's the trac=
e
>>> :
>>>
>>> bianchi@bianchi-HP-Pavilion-dv6-Notebook-PC:~$ git clone -b pyro git://
>>> git.yoctoproject.org/poky.git
>>> Cloning into 'poky'...
>>> remote: Counting objects: 373183, done.
>>> remote: Compressing objects: 100% (89366/89366), done.
>>> remote: Total 373183 (delta 277418), reused 373031 (delta 277266)
>>> Receiving objects: 100% (373183/373183), 134.71 MiB | 1.47 MiB/s, done.
>>> Resolving deltas: 100% (277418/277418), done.
>>> Checking connectivity... done.
>>>
>>>
>>> bianchi@bianchi-HP-Pavilion-dv6-Notebook-PC:~/poky$ source
>>> oe-init-build-env
>>> You had no conf/local.conf file. This configuration file has therefore
>>> been
>>> created for you with some default values. You may wish to edit it to, f=
or
>>> example, select a different MACHINE (target hardware). See
>>> conf/local.conf
>>> for more information as common configuration options are commented.
>>>
>>> You had no conf/bblayers.conf file. This configuration file has
>>> therefore been
>>> created for you with some default values. To add additional metadata
>>> layers
>>> into your configuration please add entries to conf/bblayers.conf.
>>>
>>> The Yocto Project has extensive documentation about OE including a
>>> reference
>>> manual which can be found at:
>>>     http://yoctoproject.org/documentation
>>>
>>> For more information about OpenEmbedded see their website:
>>>     http://www.openembedded.org/
>>>
>>>
>>> ### Shell environment set up for builds. ###
>>>
>>> You can now run 'bitbake <target>'
>>>
>>> Common targets are:
>>>     core-image-minimal
>>>     core-image-sato
>>>     meta-toolchain
>>>     meta-ide-support
>>>
>>> You can also run generated qemu images with a command like 'runqemu
>>> qemux86'
>>> bianchi@bianchi-HP-Pavilion-dv6-Notebook-PC:~/poky/build$ bitbake
>>> core-image-minimal
>>> ERROR:  OE-core's config sanity checker detected a potential
>>> misconfiguration.
>>>     Either fix the cause of this error or at your own risk disable the
>>> checker (see sanity.conf).
>>>     Following is the list of potential problems / advisories:
>>>
>>>     Fetcher failure for URL: 'https://www.example.com/'. URL
>>> https://www.example.com/ doesn't work.
>>>     Please ensure your host's network is configured correctly,
>>>     or set BB_NO_NETWORK =3D "1" to disable network access if
>>>     all required sources are on local disk.
>>>
>>>
>>> Summary: There was 1 ERROR message shown, returning a non-zero exit cod=
e.
>>>
>>>
>>> Any suggestions ?
>>>
>>> I'm using ubuntu 16.04,
>>>
>>> Thanks
>>>
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>
>>
>>
>

--001a113d29d44b0fed05564f86ac
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<p>so what s the issue=EF=BC=9F my connection is working. is it related wit=
h /etc/hosts?<br>
thanks</p>
<div class=3D"gmail_quote">On Aug 9, 2017 4:38 PM, &quot;Burton, Ross&quot;=
 &lt;<a href=3D"mailto:ross.burton@intel.com">ross.burton@intel.com</a>&gt;=
 wrote:<br type=3D"attribution"><blockquote class=3D"gmail_quote" style=3D"=
margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"=
ltr">Yep.=C2=A0 That&#39;s your problem.<div><br></div><div><div>$ wget <a =
href=3D"https://www.example.com/" target=3D"_blank">https://www.example.com=
/</a></div><div>--2017-08-09 09:37:43-- =C2=A0<a href=3D"https://www.exampl=
e.com/" target=3D"_blank">https://www.example.com/</a></div><div>Resolving =
www.example.com... 93.184.216.34, 2606:2800:220:1:248:1893:25c8:<wbr>1946</=
div><div>Connecting to <a href=3D"http://www.example.com" target=3D"_blank"=
>www.example.com</a>|93.184.216.34|<wbr>:443... connected.</div><div>HTTP r=
equest sent, awaiting response... 200 OK</div><div>Length: 1270 (1.2K) [tex=
t/html]</div><div>Saving to: =E2=80=98index.html=E2=80=99</div><div><br></d=
iv><div>index.html =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0100%[=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D&gt;] =C2=A0 1.24K =C2=A0--.-KB/s=
 =C2=A0 =C2=A0in 0s</div><div><br></div><div>2017-08-09 09:37:44 (15.3 MB/s=
) - =E2=80=98index.html=E2=80=99 saved [1270/1270]</div></div><div><br></di=
v><div>Works for me.=C2=A0 Your network or wget is broken, and that is unre=
lated to bitbake/yocto/etc.</div><div><br></div><div>Ross</div></div><div c=
lass=3D"gmail_extra"><br><div class=3D"gmail_quote">On 9 August 2017 at 09:=
34, Riko <span dir=3D"ltr">&lt;<a href=3D"mailto:antonius.riko@gmail.com" t=
arget=3D"_blank">antonius.riko@gmail.com</a>&gt;</span> wrote:<br><blockquo=
te class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc so=
lid;padding-left:1ex">
 =20
   =20
 =20
  <div text=3D"#000000" bgcolor=3D"#FFFFFF">
    <p>This one ?<br>
    </p>
    <p>bianchi@bianchi-HP-Pavilion-dv<wbr>6-Notebook-PC:~/poky/build$ wget
      <a class=3D"m_-2108199454515190859m_1262213939812178703moz-txt-link-f=
reetext" href=3D"https://www.example.com/" target=3D"_blank">https://www.ex=
ample.com/</a><br>
      --2017-08-09 16:33:05--=C2=A0 <a class=3D"m_-2108199454515190859m_126=
2213939812178703moz-txt-link-freetext" href=3D"https://www.example.com/" ta=
rget=3D"_blank">https://www.example.com/</a><br>
      Resolving <a class=3D"m_-2108199454515190859m_1262213939812178703moz-=
txt-link-abbreviated" href=3D"http://www.example.com" target=3D"_blank">www=
.example.com</a> (<a class=3D"m_-2108199454515190859m_1262213939812178703mo=
z-txt-link-abbreviated" href=3D"http://www.example.com" target=3D"_blank">w=
ww.example.com</a>)... failed: Name or
      service not known.<br>
      wget: unable to resolve host address &#39;<a class=3D"m_-210819945451=
5190859m_1262213939812178703moz-txt-link-abbreviated" href=3D"http://www.ex=
ample.com=E2=80=99" target=3D"_blank">www.example.com=E2=80=99</a><br>
      <br>
    </p><div><div class=3D"m_-2108199454515190859h5">
    <br>
    <div class=3D"m_-2108199454515190859m_1262213939812178703moz-cite-prefi=
x">On 09/08/17 16:31, Burton, Ross wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">For some reason, bitbake can&#39;t do &quot;wget <a =
href=3D"https://www.example.com/" target=3D"_blank">https://www.example.com=
/</a>&quot;.
        =C2=A0 Try running that command outside of bitbake and seeing if it
        returns any errors.
        <div><br>
        </div>
        <div>Ross</div>
      </div>
      <div class=3D"gmail_extra"><br>
        <div class=3D"gmail_quote">On 9 August 2017 at 09:29, Riko <span di=
r=3D"ltr">&lt;<a href=3D"mailto:antonius.riko@gmail.com" target=3D"_blank">=
antonius.riko@gmail.com</a>&gt;</span>
          wrote:<br>
          <blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bord=
er-left:1px #ccc solid;padding-left:1ex">Dear Yocto
            Member,<br>
            <br>
            <br>
            I have downloaded fresh install of yocto but got error,
            here&#39;s the trace :<br>
            <br>
            bianchi@bianchi-HP-Pavilion-dv<wbr>6-Notebook-PC:~$ git
            clone -b pyro git://<a href=3D"http://git.yoctoproject.org/poky=
.git" rel=3D"noreferrer" target=3D"_blank">git.yoctoproject.org/pok<wbr>y.g=
it</a><br>
            Cloning into &#39;poky&#39;...<br>
            remote: Counting objects: 373183, done.<br>
            remote: Compressing objects: 100% (89366/89366), done.<br>
            remote: Total 373183 (delta 277418), reused 373031 (delta
            277266)<br>
            Receiving objects: 100% (373183/373183), 134.71 MiB | 1.47
            MiB/s, done.<br>
            Resolving deltas: 100% (277418/277418), done.<br>
            Checking connectivity... done.<br>
            <br>
            <br>
            bianchi@bianchi-HP-Pavilion-dv<wbr>6-Notebook-PC:~/poky$
            source oe-init-build-env<br>
            You had no conf/local.conf file. This configuration file has
            therefore been<br>
            created for you with some default values. You may wish to
            edit it to, for<br>
            example, select a different MACHINE (target hardware). See
            conf/local.conf<br>
            for more information as common configuration options are
            commented.<br>
            <br>
            You had no conf/bblayers.conf file. This configuration file
            has therefore been<br>
            created for you with some default values. To add additional
            metadata layers<br>
            into your configuration please add entries to
            conf/bblayers.conf.<br>
            <br>
            The Yocto Project has extensive documentation about OE
            including a reference<br>
            manual which can be found at:<br>
            =C2=A0 =C2=A0 <a href=3D"http://yoctoproject.org/documentation"=
 rel=3D"noreferrer" target=3D"_blank">http://yoctoproject.org/docume<wbr>nt=
ation</a><br>
            <br>
            For more information about OpenEmbedded see their website:<br>
            =C2=A0 =C2=A0 <a href=3D"http://www.openembedded.org/" rel=3D"n=
oreferrer" target=3D"_blank">http://www.openembedded.org/</a><br>
            <br>
            <br>
            ### Shell environment set up for builds. ###<br>
            <br>
            You can now run &#39;bitbake &lt;target&gt;&#39;<br>
            <br>
            Common targets are:<br>
            =C2=A0 =C2=A0 core-image-minimal<br>
            =C2=A0 =C2=A0 core-image-sato<br>
            =C2=A0 =C2=A0 meta-toolchain<br>
            =C2=A0 =C2=A0 meta-ide-support<br>
            <br>
            You can also run generated qemu images with a command like
            &#39;runqemu qemux86&#39;<br>
            bianchi@bianchi-HP-Pavilion-dv<wbr>6-Notebook-PC:~/poky/build$
            bitbake core-image-minimal<br>
            ERROR:=C2=A0 OE-core&#39;s config sanity checker detected a pot=
ential
            misconfiguration.<br>
            =C2=A0 =C2=A0 Either fix the cause of this error or at your own=
 risk
            disable the checker (see sanity.conf).<br>
            =C2=A0 =C2=A0 Following is the list of potential problems /
            advisories:<br>
            <br>
            =C2=A0 =C2=A0 Fetcher failure for URL: &#39;<a href=3D"https://=
www.example.com/" rel=3D"noreferrer" target=3D"_blank">https://www.example.=
com/</a>&#39;.
            URL <a href=3D"https://www.example.com/" rel=3D"noreferrer" tar=
get=3D"_blank">https://www.example.com/</a>
            doesn&#39;t work.<br>
            =C2=A0 =C2=A0 Please ensure your host&#39;s network is configur=
ed
            correctly,<br>
            =C2=A0 =C2=A0 or set BB_NO_NETWORK =3D &quot;1&quot; to disable=
 network access if<br>
            =C2=A0 =C2=A0 all required sources are on local disk.<br>
            <br>
            <br>
            Summary: There was 1 ERROR message shown, returning a
            non-zero exit code.<br>
            <br>
            <br>
            Any suggestions ?<br>
            <br>
            I&#39;m using ubuntu 16.04,<br>
            <br>
            Thanks<span class=3D"m_-2108199454515190859m_126221393981217870=
3HOEnZb"><font color=3D"#888888"><br>
                <br>
                -- <br>
                ______________________________<wbr>_________________<br>
                yocto mailing list<br>
                <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank"=
>yocto@yoctoproject.org</a><br>
                <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" r=
el=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org<wbr>/lis=
tinfo/yocto</a><br>
              </font></span></blockquote>
        </div>
        <br>
      </div>
    </blockquote>
    <br>
  </div></div></div>

</blockquote></div><br></div>
</blockquote></div>

--001a113d29d44b0fed05564f86ac--
