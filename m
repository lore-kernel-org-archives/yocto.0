Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 79F9BE00A9B; Wed,  9 Aug 2017 03:35:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.169 listed in dnsbl.sorbs.net]
Received: from mail-io0-f169.google.com (mail-io0-f169.google.com
	[209.85.223.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33F38E00970
	for <yocto@yoctoproject.org>; Wed,  9 Aug 2017 03:35:10 -0700 (PDT)
Received: by mail-io0-f169.google.com with SMTP id o9so23610313iod.1
	for <yocto@yoctoproject.org>; Wed, 09 Aug 2017 03:35:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=P3efL6bRw4RcV1ZBGXHyNhdEq83kd+WnVMuBQG070qo=;
	b=iVUfKoeSwHPL3zTp0iO23Ui5bvHlBAFb/yPy+/U/WRTwex++1i+uUn6iYiRbbqvy9z
	vjEM3Ja54Qbta/Mdq60qhp3Hsbmbq8DP+XdHTB2KqZw2peRt8zUe7dHCYHij7CQlzT/F
	bcTRio2VpPj/kkM4vPfBHcwJOqrfpArMy9bWrmb/c6HymlIfqweM2hoI5KIwih88O9zO
	A0fIBePQGYoiWfjCnEwJVkjnxXcVXe7NeTHebFspaC8oExza2BX/GTa78BntpHVamSw7
	G1Y43GdhQEXuMkjfJszQDkJt2IPerdIa7FaKM6oFAWCTFrqH2KPvXTiZZGsy1iI+WzUI
	DuzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=P3efL6bRw4RcV1ZBGXHyNhdEq83kd+WnVMuBQG070qo=;
	b=bapjp+jHM5yN2KK/G8LA/aYlmFlAvkgFgdalW/G+L4TxDpda/idUt2xmFvX/GssA8K
	FMe2iZYWITof6OHLTM7ejMzZJrNfP7TMLG3BcZs5g41Hbies2zEqPmJcC/8HDFEUmIyS
	oElq0mIgj4oIGCUKHsVjfKd/KgE+VAx2dDHyoB4ZyXNeDT19f0wggRRF71RahuZUNpTs
	SlMD/4At+VgKO85cYzmYK+r948H8tM+pHfdZTvc8xUFoqvdQxF4itZN+Y0VlAeAhRzRc
	9CrdljpKyitHrv1do+2Pim7q+8Ua+uDWrb4FkVVsgSPeYHoJHg3vrIk9n8cAUTaEjYb4
	mKWg==
X-Gm-Message-State: AHYfb5h+SibJRtQgbEQEZqwbJtjnTxU9KjWZq6km2EaArfTtdpH1yBFa
	kzzPqZRfY1fIIf+WM6Ne37017mpTdD9/
X-Received: by 10.107.132.33 with SMTP id g33mr5798545iod.300.1502274910122;
	Wed, 09 Aug 2017 03:35:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.135.234 with HTTP; Wed, 9 Aug 2017 03:34:49 -0700 (PDT)
In-Reply-To: <CAByQQ_q5s2cWY6FJVLnSaygmS1ytcYTgLAHfR=q_p3YNwQogzA@mail.gmail.com>
References: <759e84aa-b429-d9f8-bd71-aeef9fbe7bfe@gmail.com>
	<CAJTo0Lb41N7A_dZMHKHoBAEDm0KHAW2K-R-TWvEKxbsygbyK=g@mail.gmail.com>
	<adde6220-1d6d-103d-b9ff-cd39d32bf943@gmail.com>
	<CAJTo0LbM1Ly6aFCeq7FTsOiCpmhSw_PoRRu-3NmMbKx1CXtAkQ@mail.gmail.com>
	<CAByQQ_q5s2cWY6FJVLnSaygmS1ytcYTgLAHfR=q_p3YNwQogzA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 9 Aug 2017 11:34:49 +0100
Message-ID: <CAJTo0LaPD2aQp7ufSgg6PePV7k1_nqGKdzhpWTYPacqmdEtu9g@mail.gmail.com>
To: Riko Ho <antonius.riko@gmail.com>
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
X-List-Received-Date: Wed, 09 Aug 2017 10:35:12 -0000
Content-Type: multipart/alternative; boundary="001a113ed2e85fc4e405564fa2ad"

--001a113ed2e85fc4e405564fa2ad
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I've no idea why you can't connect to example.com using wget, you'll have
to debug it yourself.

Ross

On 9 August 2017 at 11:27, Riko Ho <antonius.riko@gmail.com> wrote:

> so what s the issue=EF=BC=9F my connection is working. is it related with
> /etc/hosts?
> thanks
> On Aug 9, 2017 4:38 PM, "Burton, Ross" <ross.burton@intel.com> wrote:
>
>> Yep.  That's your problem.
>>
>> $ wget https://www.example.com/
>> --2017-08-09 09:37:43--  https://www.example.com/
>> Resolving www.example.com... 93.184.216.34, 2606:2800:220:1:248:1893:25c=
8:
>> 1946
>> Connecting to www.example.com|93.184.216.34|:443... connected.
>> HTTP request sent, awaiting response... 200 OK
>> Length: 1270 (1.2K) [text/html]
>> Saving to: =E2=80=98index.html=E2=80=99
>>
>> index.html          100%[=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D>]   1.24K  --.-KB/s    in 0s
>>
>> 2017-08-09 09:37:44 (15.3 MB/s) - =E2=80=98index.html=E2=80=99 saved [12=
70/1270]
>>
>> Works for me.  Your network or wget is broken, and that is unrelated to
>> bitbake/yocto/etc.
>>
>> Ross
>>
>> On 9 August 2017 at 09:34, Riko <antonius.riko@gmail.com> wrote:
>>
>>> This one ?
>>>
>>> bianchi@bianchi-HP-Pavilion-dv6-Notebook-PC:~/poky/build$ wget
>>> https://www.example.com/
>>> --2017-08-09 16:33:05--  https://www.example.com/
>>> Resolving www.example.com (www.example.com)... failed: Name or service
>>> not known.
>>> wget: unable to resolve host address 'www.example.com=E2=80=99
>>>
>>>
>>> On 09/08/17 16:31, Burton, Ross wrote:
>>>
>>> For some reason, bitbake can't do "wget https://www.example.com/".
>>> Try running that command outside of bitbake and seeing if it returns an=
y
>>> errors.
>>>
>>> Ross
>>>
>>> On 9 August 2017 at 09:29, Riko <antonius.riko@gmail.com> wrote:
>>>
>>>> Dear Yocto Member,
>>>>
>>>>
>>>> I have downloaded fresh install of yocto but got error, here's the
>>>> trace :
>>>>
>>>> bianchi@bianchi-HP-Pavilion-dv6-Notebook-PC:~$ git clone -b pyro git:/=
/
>>>> git.yoctoproject.org/poky.git
>>>> Cloning into 'poky'...
>>>> remote: Counting objects: 373183, done.
>>>> remote: Compressing objects: 100% (89366/89366), done.
>>>> remote: Total 373183 (delta 277418), reused 373031 (delta 277266)
>>>> Receiving objects: 100% (373183/373183), 134.71 MiB | 1.47 MiB/s, done=
.
>>>> Resolving deltas: 100% (277418/277418), done.
>>>> Checking connectivity... done.
>>>>
>>>>
>>>> bianchi@bianchi-HP-Pavilion-dv6-Notebook-PC:~/poky$ source
>>>> oe-init-build-env
>>>> You had no conf/local.conf file. This configuration file has therefore
>>>> been
>>>> created for you with some default values. You may wish to edit it to,
>>>> for
>>>> example, select a different MACHINE (target hardware). See
>>>> conf/local.conf
>>>> for more information as common configuration options are commented.
>>>>
>>>> You had no conf/bblayers.conf file. This configuration file has
>>>> therefore been
>>>> created for you with some default values. To add additional metadata
>>>> layers
>>>> into your configuration please add entries to conf/bblayers.conf.
>>>>
>>>> The Yocto Project has extensive documentation about OE including a
>>>> reference
>>>> manual which can be found at:
>>>>     http://yoctoproject.org/documentation
>>>>
>>>> For more information about OpenEmbedded see their website:
>>>>     http://www.openembedded.org/
>>>>
>>>>
>>>> ### Shell environment set up for builds. ###
>>>>
>>>> You can now run 'bitbake <target>'
>>>>
>>>> Common targets are:
>>>>     core-image-minimal
>>>>     core-image-sato
>>>>     meta-toolchain
>>>>     meta-ide-support
>>>>
>>>> You can also run generated qemu images with a command like 'runqemu
>>>> qemux86'
>>>> bianchi@bianchi-HP-Pavilion-dv6-Notebook-PC:~/poky/build$ bitbake
>>>> core-image-minimal
>>>> ERROR:  OE-core's config sanity checker detected a potential
>>>> misconfiguration.
>>>>     Either fix the cause of this error or at your own risk disable the
>>>> checker (see sanity.conf).
>>>>     Following is the list of potential problems / advisories:
>>>>
>>>>     Fetcher failure for URL: 'https://www.example.com/'. URL
>>>> https://www.example.com/ doesn't work.
>>>>     Please ensure your host's network is configured correctly,
>>>>     or set BB_NO_NETWORK =3D "1" to disable network access if
>>>>     all required sources are on local disk.
>>>>
>>>>
>>>> Summary: There was 1 ERROR message shown, returning a non-zero exit
>>>> code.
>>>>
>>>>
>>>> Any suggestions ?
>>>>
>>>> I'm using ubuntu 16.04,
>>>>
>>>> Thanks
>>>>
>>>> --
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>>
>>>
>>>
>>>
>>

--001a113ed2e85fc4e405564fa2ad
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I&#39;ve no idea why you can&#39;t connect to <a href=3D"h=
ttp://example.com">example.com</a> using wget, you&#39;ll have to debug it =
yourself.<div><br></div><div>Ross</div></div><div class=3D"gmail_extra"><br=
><div class=3D"gmail_quote">On 9 August 2017 at 11:27, Riko Ho <span dir=3D=
"ltr">&lt;<a href=3D"mailto:antonius.riko@gmail.com" target=3D"_blank">anto=
nius.riko@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quo=
te" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"=
><p>so what s the issue=EF=BC=9F my connection is working. is it related wi=
th /etc/hosts?<br>
thanks</p><div class=3D"HOEnZb"><div class=3D"h5">
<div class=3D"gmail_quote">On Aug 9, 2017 4:38 PM, &quot;Burton, Ross&quot;=
 &lt;<a href=3D"mailto:ross.burton@intel.com" target=3D"_blank">ross.burton=
@intel.com</a>&gt; wrote:<br type=3D"attribution"><blockquote class=3D"gmai=
l_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left=
:1ex"><div dir=3D"ltr">Yep.=C2=A0 That&#39;s your problem.<div><br></div><d=
iv><div>$ wget <a href=3D"https://www.example.com/" target=3D"_blank">https=
://www.example.com/</a></div><div>--2017-08-09 09:37:43-- =C2=A0<a href=3D"=
https://www.example.com/" target=3D"_blank">https://www.example.com/</a></d=
iv><div>Resolving www.example.com... 93.184.216.34, 2606:2800:220:1:248:189=
3:25c8:<wbr>1946</div><div>Connecting to <a href=3D"http://www.example.com"=
 target=3D"_blank">www.example.com</a>|93.184.216.34|<wbr>:443... connected=
.</div><div>HTTP request sent, awaiting response... 200 OK</div><div>Length=
: 1270 (1.2K) [text/html]</div><div>Saving to: =E2=80=98index.html=E2=80=99=
</div><div><br></div><div>index.html =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0100%=
[=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D&gt;] =C2=A0 1.24=
K =C2=A0--.-KB/s =C2=A0 =C2=A0in 0s</div><div><br></div><div>2017-08-09 09:=
37:44 (15.3 MB/s) - =E2=80=98index.html=E2=80=99 saved [1270/1270]</div></d=
iv><div><br></div><div>Works for me.=C2=A0 Your network or wget is broken, =
and that is unrelated to bitbake/yocto/etc.</div><div><br></div><div>Ross</=
div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On 9 Au=
gust 2017 at 09:34, Riko <span dir=3D"ltr">&lt;<a href=3D"mailto:antonius.r=
iko@gmail.com" target=3D"_blank">antonius.riko@gmail.com</a>&gt;</span> wro=
te:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-=
left:1px #ccc solid;padding-left:1ex">
 =20
   =20
 =20
  <div text=3D"#000000" bgcolor=3D"#FFFFFF">
    <p>This one ?<br>
    </p>
    <p>bianchi@bianchi-HP-Pavilion-dv<wbr>6-Notebook-PC:~/poky/build$ wget
      <a class=3D"m_366007862159389111m_-2108199454515190859m_1262213939812=
178703moz-txt-link-freetext" href=3D"https://www.example.com/" target=3D"_b=
lank">https://www.example.com/</a><br>
      --2017-08-09 16:33:05--=C2=A0 <a class=3D"m_366007862159389111m_-2108=
199454515190859m_1262213939812178703moz-txt-link-freetext" href=3D"https://=
www.example.com/" target=3D"_blank">https://www.example.com/</a><br>
      Resolving <a class=3D"m_366007862159389111m_-2108199454515190859m_126=
2213939812178703moz-txt-link-abbreviated" href=3D"http://www.example.com" t=
arget=3D"_blank">www.example.com</a> (<a class=3D"m_366007862159389111m_-21=
08199454515190859m_1262213939812178703moz-txt-link-abbreviated" href=3D"htt=
p://www.example.com" target=3D"_blank">www.example.com</a>)... failed: Name=
 or
      service not known.<br>
      wget: unable to resolve host address &#39;<a class=3D"m_3660078621593=
89111m_-2108199454515190859m_1262213939812178703moz-txt-link-abbreviated" h=
ref=3D"http://www.example.com=E2=80=99" target=3D"_blank">www.example.com=
=E2=80=99</a><br>
      <br>
    </p><div><div class=3D"m_366007862159389111m_-2108199454515190859h5">
    <br>
    <div class=3D"m_366007862159389111m_-2108199454515190859m_1262213939812=
178703moz-cite-prefix">On 09/08/17 16:31, Burton, Ross wrote:<br>
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
            Thanks<span class=3D"m_366007862159389111m_-2108199454515190859=
m_1262213939812178703HOEnZb"><font color=3D"#888888"><br>
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
</div></div></blockquote></div><br></div>

--001a113ed2e85fc4e405564fa2ad--
