Return-Path: <adam.yh.lee@gmail.com>
Received: from mail-bk0-f52.google.com (mail-bk0-f52.google.com
	[209.85.214.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A58EBE00498
	for <yocto@yoctoproject.org>; Thu, 30 Jan 2014 16:22:04 -0800 (PST)
Received: by mail-bk0-f52.google.com with SMTP id e11so1871393bkh.11
	for <yocto@yoctoproject.org>; Thu, 30 Jan 2014 16:22:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=gaWhmDLSmbhxLBHkFMq0Wgg4z0u7ACCFtPy401rLzJs=;
	b=mCH097tJhXM0y5gANMUx7PRdGJTMtU/knpB6M3yF8zv8y3sFq2NYLBdG6j5ORPlg7S
	3/0gnJz2YRztLzGY+S5H1cfIEtEzEHON+VZCh3l/OAV+UuSH7X2mvNHEb6slWlBblh2q
	GLdtAmSE2Z0WjMmguEFju3IGBKhq6SnzoWO4qyFHuQwwnyUzp7cJsFxUMr1uL6+smF4j
	aT6J1tw0jr6k80VcLQ/PlgP/TK/5qVEc44lf53FiBFPM2BXKGgKk0MLzyi0TSga7csIe
	PWvp53H/BEStmW4j+Fg8CqhH8jat+eQJ6qrxnMfCPwW/Zr/UVaUksI232zV0qZuijduL
	yY3A==
MIME-Version: 1.0
X-Received: by 10.112.11.170 with SMTP id r10mr11382lbb.23.1391127723051; Thu,
	30 Jan 2014 16:22:03 -0800 (PST)
Received: by 10.114.57.68 with HTTP; Thu, 30 Jan 2014 16:22:02 -0800 (PST)
In-Reply-To: <52EAE79E.9020807@dynamicdevices.co.uk>
References: <52E96001.7030000@dynamicdevices.co.uk>
	<CAFeBWL737fZb2RsWoTJnU-xw-XuO5g3ynhvpDaEGZnbUijXi0g@mail.gmail.com>
	<52EADC09.2090204@dynamicdevices.co.uk>
	<CAFeBWL4bBneiZ=brikVz0x16MtD_k3odTUs4bxDb-2kc+rmNDw@mail.gmail.com>
	<52EAE79E.9020807@dynamicdevices.co.uk>
Date: Thu, 30 Jan 2014 16:22:02 -0800
Message-ID: <CAFeBWL5Z-KtUPacELc6MVP0SRg2b9nKuiyd6xWK9suGvDHROtA@mail.gmail.com>
From: Adam Lee <adam.yh.lee@gmail.com>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to temporarily disable a package rebuild during an image build?
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
X-List-Received-Date: Fri, 31 Jan 2014 00:22:12 -0000
X-Groupsio-MsgNum: 17946
Content-Type: multipart/related; boundary=001a11c3be5ec5e84804f139290e

--001a11c3be5ec5e84804f139290e
Content-Type: multipart/alternative; boundary=001a11c3be5ec5e84504f139290d

--001a11c3be5ec5e84504f139290d
Content-Type: text/plain; charset=ISO-8859-1

I see. Why not just build the kernel image (uImage) and copy the file over
to your /boot partition? That way you don't have to build and as well as
write an entire image to ur card, saving you some time.




On Thu, Jan 30, 2014 at 4:00 PM, Alex J Lennon <
ajlennon@dynamicdevices.co.uk> wrote:

>
> On 30/01/2014 23:54, Adam Lee wrote:
>
> Hi Alex, so are you bitbaking the entire image every time you make a
> change to the kernel (The .bb file you linked is the image recipe)?
> If you only build the kernel (ie bitbake virtual/kernel), your system
> shouldn't build the entire image.
>
>  Let me know!
>
>
> That's exactly right Adam. I'm bitbaking an SD card image, writing that to
> a uSD card and booting it up :)
>
> In theory that should result in the kernel rebuild and a nice image for me
> to use.
>
> In actuality numbers of other things seem to decide they need to be
> rebuilt, which doesn't appear to be too much of a time-sink,
> excepting for QT4
>
>
>  Adam
>
>
> On Thu, Jan 30, 2014 at 3:11 PM, Alex J Lennon <
> ajlennon@dynamicdevices.co.uk> wrote:
>
>>  Hi Adam,
>>
>>
>> On 30/01/2014 18:40, Adam Lee wrote:
>>
>> I am not sure if that's the correct behaviour at all. If you are building
>> the kernel, it should only build the kernel (and its deps).
>> How are you building it? I suppose you are doing 'bitbake
>> virtual/kernel', but just checking!
>>
>>
>>  I'm building an image for test, based on fsl-image-gui out of
>> meta-fsl-arm.
>>
>> It looks like that fsl image pulls in qt4 -
>>
>>
>> https://github.com/Freescale/meta-fsl-demos/blob/master/recipes-fsl/images/fsl-image-gui.bb
>>
>> I don't quite understand why qt4 is rebuilding but if I had to guess
>> perhaps it's got a dependency on framebuffer support or something.
>>
>> I could probably go in and change the image recipes if I really had to,
>> but I'd rather leave them as is, assuming correctness of dependencies,
>> I'd rather change an environment variable during my debug cycle to
>> temporarily contrain rebuilding of packages that I know don't need to
>> be rebuilt, so things revert to "correct" when I'm finished porting the
>> kernel
>>
>> Cheers,
>>
>> Alex
>>
>>
>>
>>  Adam
>>
>>
>> On Wed, Jan 29, 2014 at 12:09 PM, Alex J Lennon <
>> ajlennon@dynamicdevices.co.uk> wrote:
>>
>>> Hi,
>>>
>>> I was wondering if there's a per-package environment variable I could
>>> use to contrain the rebuilding of packages?
>>>
>>> i.e. I am modifying a linux-imx kernel, rebuilding that kernel package
>>> and then generating an output filesystem image to boot from an SD card
>>> for testing.
>>>
>>> Each time I modify linux-imx I am finding that qt4 does a rebuild.
>>>
>>> So whilst I'm making changes to linux-imx for test I'd rather that q4
>>> didn't rebuild when I build the image, and was wondering if there's a
>>> way to prevent that?
>>>
>>> (I could, I suppose, move to a testing model that didn't use a
>>> completely rebuilt SD card image but I like this approach as if it
>>> works, well, it works, and I can distribute. Perhaps there's a better
>>> way?)
>>>
>>> Thanks,
>>>
>>> Alex
>>>
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>
>>
>>  --
>>
>> [image: Dynamic Devices Ltd] <http://www.dynamicdevices.co.uk/>
>>
>> Alex J Lennon / Director
>> 1 Queensway, Liverpool L22 4RA
>>
>> mobile: +44 (0)7956 668178 <%2B44%20%280%297956%20668178>
>>
>>  [image: Linkedin] <http://www.linkedin.com/in/alexjlennon> [image:
>> Skype]
>>
>> This e-mail message may contain confidential or legally privileged
>> information and is intended only for the use of the intended recipient(s).
>> Any unauthorized disclosure, dissemination, distribution, copying or the
>> taking of any action in reliance on the information herein is prohibited.
>> E-mails are not secure and cannot be guaranteed to be error free as they
>> can be intercepted, amended, or contain viruses. Anyone who communicates
>> with us by e-mail is deemed to have accepted these risks. Company Name is
>> not responsible for errors or omissions in this message and denies any
>> responsibility for any damage arising from the use of e-mail. Any opinion
>> and other statement contained in this message and any attachment are solely
>> those of the author and do not necessarily represent those of the company.
>>
>
>
> --
>
> [image: Dynamic Devices Ltd] <http://www.dynamicdevices.co.uk/>
>
> Alex J Lennon / Director
> 1 Queensway, Liverpool L22 4RA
>
> mobile: +44 (0)7956 668178
>
>  [image: Linkedin] <http://www.linkedin.com/in/alexjlennon> [image: Skype]
>
> This e-mail message may contain confidential or legally privileged
> information and is intended only for the use of the intended recipient(s).
> Any unauthorized disclosure, dissemination, distribution, copying or the
> taking of any action in reliance on the information herein is prohibited.
> E-mails are not secure and cannot be guaranteed to be error free as they
> can be intercepted, amended, or contain viruses. Anyone who communicates
> with us by e-mail is deemed to have accepted these risks. Company Name is
> not responsible for errors or omissions in this message and denies any
> responsibility for any damage arising from the use of e-mail. Any opinion
> and other statement contained in this message and any attachment are solely
> those of the author and do not necessarily represent those of the company.
>

--001a11c3be5ec5e84504f139290d
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I see. Why not just build the kernel image (uImage) and co=
py the file over to your /boot partition? That way you don&#39;t have to bu=
ild and as well as write an entire image to ur card, saving you some time.=
=A0<div>
<br></div><div><br></div></div><div class=3D"gmail_extra"><br><br><div clas=
s=3D"gmail_quote">On Thu, Jan 30, 2014 at 4:00 PM, Alex J Lennon <span dir=
=3D"ltr">&lt;<a href=3D"mailto:ajlennon@dynamicdevices.co.uk" target=3D"_bl=
ank">ajlennon@dynamicdevices.co.uk</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
 =20
   =20
 =20
  <div text=3D"#000000" bgcolor=3D"#FFFFFF"><div class=3D"im">
    <br>
    <div>On 30/01/2014 23:54, Adam Lee wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">Hi Alex, so are you bitbaking the entire image
        every time you make a change to the kernel (The .bb file you
        linked is the image recipe)?
        <div>If you only build the kernel (ie bitbake virtual/kernel),
          your system shouldn&#39;t build the entire image.</div>
        <div><br>
        </div>
        <div>Let me know!</div>
        <div><br>
        </div>
      </div>
    </blockquote>
    <br></div>
    That&#39;s exactly right Adam. I&#39;m bitbaking an SD card image, writ=
ing
    that to a uSD card and booting it up :)<br>
    <br>
    In theory that should result in the kernel rebuild and a nice image
    for me to use.<br>
    <br>
    In actuality numbers of other things seem to decide they need to be
    rebuilt, which doesn&#39;t appear to be too much of a time-sink,<br>
    excepting for QT4<div><div class=3D"h5"><br>
    <br>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div>Adam</div>
      </div>
      <div class=3D"gmail_extra"><br>
        <br>
        <div class=3D"gmail_quote">On Thu, Jan 30, 2014 at 3:11 PM, Alex J
          Lennon <span dir=3D"ltr">&lt;<a href=3D"mailto:ajlennon@dynamicde=
vices.co.uk" target=3D"_blank">ajlennon@dynamicdevices.co.uk</a>&gt;</span>
          wrote:<br>
          <blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bord=
er-left:1px #ccc solid;padding-left:1ex">
            <div text=3D"#000000" bgcolor=3D"#FFFFFF"> Hi Adam,
              <div><br>
                <br>
                <div>On 30/01/2014 18:40, Adam Lee wrote:<br>
                </div>
                <blockquote type=3D"cite">
                  <div dir=3D"ltr">I am not sure if that&#39;s the correct
                    behaviour at all. If you are building the kernel, it
                    should only build the kernel (and its deps).
                    <div>How are you building it? I suppose you are
                      doing &#39;bitbake virtual/kernel&#39;, but just chec=
king!</div>
                    <div><br>
                    </div>
                  </div>
                </blockquote>
                <br>
              </div>
              I&#39;m building an image for test, based on fsl-image-gui ou=
t
              of meta-fsl-arm. <br>
              <br>
              It looks like that fsl image pulls in qt4 -<br>
              <br>
              <a href=3D"https://github.com/Freescale/meta-fsl-demos/blob/m=
aster/recipes-fsl/images/fsl-image-gui.bb" target=3D"_blank">https://github=
.com/Freescale/meta-fsl-demos/blob/master/recipes-fsl/images/fsl-image-gui.=
bb</a><br>

              <br>
              I don&#39;t quite understand why qt4 is rebuilding but if I
              had to guess perhaps it&#39;s got a dependency on framebuffer
              support or something.<br>
              <br>
              I could probably go in and change the image recipes if I
              really had to, but I&#39;d rather leave them as is, assuming
              correctness of dependencies, <br>
              I&#39;d rather change an environment variable during my debug
              cycle to temporarily contrain rebuilding of packages that
              I know don&#39;t need to <br>
              be rebuilt, so things revert to &quot;correct&quot; when I&#3=
9;m
              finished porting the kernel<br>
              <br>
              Cheers, <br>
              <br>
              Alex
              <div><br>
                <br>
                <br>
                <blockquote type=3D"cite">
                  <div dir=3D"ltr">
                    <div>Adam</div>
                  </div>
                  <div class=3D"gmail_extra"><br>
                    <br>
                    <div class=3D"gmail_quote">On Wed, Jan 29, 2014 at
                      12:09 PM, Alex J Lennon <span dir=3D"ltr">&lt;<a href=
=3D"mailto:ajlennon@dynamicdevices.co.uk" target=3D"_blank">ajlennon@dynami=
cdevices.co.uk</a>&gt;</span>
                      wrote:<br>
                      <blockquote class=3D"gmail_quote" style=3D"margin:0 0=
 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Hi,<br>
                        <br>
                        I was wondering if there&#39;s a per-package
                        environment variable I could<br>
                        use to contrain the rebuilding of packages?<br>
                        <br>
                        i.e. I am modifying a linux-imx kernel,
                        rebuilding that kernel package<br>
                        and then generating an output filesystem image
                        to boot from an SD card<br>
                        for testing.<br>
                        <br>
                        Each time I modify linux-imx I am finding that
                        qt4 does a rebuild.<br>
                        <br>
                        So whilst I&#39;m making changes to linux-imx for
                        test I&#39;d rather that q4<br>
                        didn&#39;t rebuild when I build the image, and was
                        wondering if there&#39;s a<br>
                        way to prevent that?<br>
                        <br>
                        (I could, I suppose, move to a testing model
                        that didn&#39;t use a<br>
                        completely rebuilt SD card image but I like this
                        approach as if it<br>
                        works, well, it works, and I can distribute.
                        Perhaps there&#39;s a better way?)<br>
                        <br>
                        Thanks,<br>
                        <br>
                        Alex<br>
                        <br>
                        _______________________________________________<br>
                        yocto mailing list<br>
                        <a href=3D"mailto:yocto@yoctoproject.org" target=3D=
"_blank">yocto@yoctoproject.org</a><br>
                        <a href=3D"https://lists.yoctoproject.org/listinfo/=
yocto" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><=
br>
                      </blockquote>
                    </div>
                    <br>
                  </div>
                </blockquote>
                <br>
              </div>
              <span><font color=3D"#888888">
                  <div>-- <br>
                    <div>
                      <p style=3D"font-family:Helvetica,Arial,sans-serif;fo=
nt-size:10px;line-height:12px"><a href=3D"http://www.dynamicdevices.co.uk/"=
 target=3D"_blank"><img src=3D"cid:part6.07000803.03060802@dynamicdevices.c=
o.uk" alt=3D"Dynamic Devices Ltd" border=3D"0"></a></p>

                      <p style=3D"font-family:Helvetica,Arial,sans-serif;fo=
nt-size:10px;line-height:12px;color:rgb(153,153,153)"><span style=3D"font-w=
eight:bold">Alex J Lennon</span>
                        <span>/</span> <span style=3D"color:#999">Director<=
/span><br>
                        <span style=3D"color:#999">1 Queensway, Liverpool
                          L22 4RA</span> </p>
                      <p style=3D"font-family:Helvetica,Arial,sans-serif;fo=
nt-size:10px;line-height:12px">
                        <span style=3D"color:#999">mobile: <a href=3D"tel:%=
2B44%20%280%297956%20668178" value=3D"+447956668178" target=3D"_blank">+44
                            (0)7956 668178</a></span> <br>
                        <br>
                      </p>
                      <p style=3D"font-size:10px;line-height:12px;font-fami=
ly:Helvetica,Arial,sans-serif">
                        <a href=3D"http://www.linkedin.com/in/alexjlennon" =
target=3D"_blank"><img src=3D"cid:part9.05010804.02030100@dynamicdevices.co=
.uk" alt=3D"Linkedin"></a> <a><img src=3D"cid:part11.07090401.08060000@dyna=
micdevices.co.uk" alt=3D"Skype"></a></p>

                      <p style=3D"font-family:Helvetica,Arial,sans-serif;co=
lor:rgb(153,153,153);font-size:9px;line-height:12px;width:25%">This
                        e-mail message may contain confidential or
                        legally privileged information and is intended
                        only for the use of the intended recipient(s).
                        Any unauthorized disclosure, dissemination,
                        distribution, copying or the taking of any
                        action in reliance on the information herein is
                        prohibited. E-mails are not secure and cannot be
                        guaranteed to be error free as they can be
                        intercepted, amended, or contain viruses. Anyone
                        who communicates with us by e-mail is deemed to
                        have accepted these risks. Company Name is not
                        responsible for errors or omissions in this
                        message and denies any responsibility for any
                        damage arising from the use of e-mail. Any
                        opinion and other statement contained in this
                        message and any attachment are solely those of
                        the author and do not necessarily represent
                        those of the company.</p>
                    </div>
                  </div>
                </font></span></div>
          </blockquote>
        </div>
        <br>
      </div>
    </blockquote>
    <br>
    <div>-- <br>
      <div>
        <p style=3D"font-family:Helvetica,Arial,sans-serif;font-size:10px;l=
ine-height:12px"><a href=3D"http://www.dynamicdevices.co.uk/" target=3D"_bl=
ank"><img src=3D"cid:part13.04090003.01090004@dynamicdevices.co.uk" alt=3D"=
Dynamic Devices Ltd" border=3D"0"></a></p>

        <p style=3D"font-family:Helvetica,Arial,sans-serif;font-size:10px;l=
ine-height:12px;color:rgb(153,153,153)"><span style=3D"font-weight:bold">Al=
ex
            J Lennon</span> <span>/</span> <span style=3D"color:#999">Direc=
tor</span><br>
          <span style=3D"color:#999">1
            Queensway, Liverpool L22 4RA</span> </p>
        <p style=3D"font-family:Helvetica,Arial,sans-serif;font-size:10px;l=
ine-height:12px"> <span style=3D"color:#999">mobile: <a href=3D"tel:%2B44%2=
0%280%297956%20668178" value=3D"+447956668178" target=3D"_blank">+44 (0)795=
6 668178</a></span>
          <br>
          <br>
        </p>
        <p style=3D"font-size:10px;line-height:12px;font-family:Helvetica,A=
rial,sans-serif"> <a href=3D"http://www.linkedin.com/in/alexjlennon" target=
=3D"_blank"><img src=3D"cid:part15.05090208.01050801@dynamicdevices.co.uk" =
alt=3D"Linkedin"></a> <a><img src=3D"cid:part17.06090409.03000906@dynamicde=
vices.co.uk" alt=3D"Skype"></a></p>

        <p style=3D"font-family:Helvetica,Arial,sans-serif;color:rgb(153,15=
3,153);font-size:9px;line-height:12px;width:25%">This e-mail message
          may contain confidential or legally privileged information and
          is intended only for the use of the intended recipient(s). Any
          unauthorized disclosure, dissemination, distribution, copying
          or the taking of any action in reliance on the information
          herein is prohibited. E-mails are not secure and cannot be
          guaranteed to be error free as they can be intercepted,
          amended, or contain viruses. Anyone who communicates with us
          by e-mail is deemed to have accepted these risks. Company Name
          is not responsible for errors or omissions in this message and
          denies any responsibility for any damage arising from the use
          of e-mail. Any opinion and other statement contained in this
          message and any attachment are solely those of the author and
          do not necessarily represent those of the company.</p>
      </div>
    </div>
  </div></div></div>

</blockquote></div><br></div>

--001a11c3be5ec5e84504f139290d--

--001a11c3be5ec5e84804f139290e
Content-Type: image/png; name="linkedin.png"
Content-Transfer-Encoding: base64
Content-ID: <part15.05090208.01050801@dynamicdevices.co.uk>
X-Attachment-Id: ec530e0a8dc4e74a_0.1.5

iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAACXBIWXMAAAsTAAALEwEAmpwYAAAA
GXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAgRJREFUeNqUUs9r1EAU/jKZ7I+2
abBZVikKoYhCsbB/gXcFwV7Eu3jwInjyogdBj3oSPHm14KGhBwuC/gkKUqtVSglYarduKutu2c1m
MuO82dqk1YX6YJL35r3vez/mWbWbCw3fd0PfnwjciQqOI51uH3HcjeK4M8+nToyHd640gnP1SViW
dSwCpRS+7vwKniy9D7k3WQl2+xYWv7Sx2epgxmMmaKMtcbrmjiSZrjL4U+MBr5RsfGwlEJr1jGvh
8dXzJuD24hqa3cFIgt09C1zn4kJk6KViWBovlgmk2jdKUn0IyykoSYeBbzbbuPXyk9GXVluoudVD
INtmqHtjOvNwVoTlmf5k+5mo+2fXZo3+4u5bbD24aPSVrQ7mpl20ewL3ltfxORaGhHCMylBCakNC
SfXPcglM4lU5Hl4+i+bPPYMhLJNCoKQbNkQqJ2CFF1149x33X60fkIhMGgxhGZXBiUDPwS5kHXPy
iT56HSH88COfhT6EMViZZXCMIeEUFsktOQe6c2TByCYMYfmAWPRlov92kaCcV2AfISCbvIRlqWYp
QaGv+5KFxp1yXgHdF32kE4awVv3Gc3XpwizWegp6e1Fy7L9eYbC/J398tO0zXGJ5ZVW3kKTRt53t
YO7kKXCnPGLvnEOWSBNsNLeRDkRkedefNsBYqN8twP+IVBGknP8twABFyPH3kUzF5AAAAABJRU5E
rkJggg==

--001a11c3be5ec5e84804f139290e
Content-Type: image/png; name="ddlogo-4.png"
Content-Transfer-Encoding: base64
Content-ID: <part13.04090003.01090004@dynamicdevices.co.uk>
X-Attachment-Id: ec530e0a8dc4e74a_0.1.4

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
RU5ErkJggg==

--001a11c3be5ec5e84804f139290e
Content-Type: image/png
Content-Transfer-Encoding: base64
Content-ID: <part6.07000803.03060802@dynamicdevices.co.uk>
X-Attachment-Id: ec530e0a8dc4e74a_0.1.1

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
RU5ErkJggg==

--001a11c3be5ec5e84804f139290e
Content-Type: image/png; name="skype.png"
Content-Transfer-Encoding: base64
Content-ID: <part17.06090409.03000906@dynamicdevices.co.uk>
X-Attachment-Id: ec530e0a8dc4e74a_0.1.6

iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAACXBIWXMAAAsTAAALEwEAmpwYAAAA
GXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAq1JREFUeNqMk0trE1EUx/935s4k
k1czbVpfWEctRaFiKZiCUCjqooggxZ0KfgC/QcVF1/oRBLsRXQjxgSu7qAsFpYuWoliLTaSNUJvQ
vJvceVzPndBSF0KHOTPD5fz+55z/vcNmXi2OZuKRHIWTiho4zFVruyg1OwWKaW7HzNz1kUEnk4pD
0xh2fQm6keDsvwJBIFGqNZ23K79yPBWNOJJH8K3q4VPVhfABjwQCSuSMQUiJXkNDNsVhHxDlxNgx
y+GmYaDuMbwvd9Ck0gpOcg2Xeo3wW0Wx7ePhzxZuDZgYT/JQgJG4ruvgLrXzmxL24ITOMHM+jpj+
7wg3jkVwb6kOUM5YQg/XFKu5gfroVhL0nsjwEF4stzA1v447Hzew0XIxHNcxngKebAnsMSo0EQSw
qFggyUBaGDBl1yh6nemz8aXOcHm+gNmv23i52cAmVVmqtMmrAIrlqqpqNkqPbaKerlcw1hdDNtMN
wMbrYh0vim209Cg6lL/ZEhhOmGHHmppDVeuQ221aWG4ZmFrIYy6/g4raErpunkjiebYfV9OgHImK
1ENm34OAYItcVQKTGQN3HRsPVko4+S6PoTc/sLDVCIXuD0ZD8ENdhoxiudpnNfVZk+FzQ+IKmTh5
JIGRnggerdWxQ1lpo+t6peOFB2SruUuMFZ4RrlSUgElx0fDx+HsNo7YVxrOstb+NapzZVeokiIJJ
P2S6HVBPUs1Dj3MWx05TwzVyfaKXI22qygwVypwreqgYSWgywAUuQkaxXPg+dl0POtMgKMb7e3Cq
WsdaTWBV7EKQwLLQ0NFMpDpVjBgebp8+GjLC82gEVxTWyjVnqC8F2+oe0+NWGmMHTqFH+91oC3A9
gUTERItgYuB6boEHnjtd+FPK5ctVR2r6oX5nRmMwTxSY707/FWAAwixkevHIXSQAAAAASUVORK5C
YII=

--001a11c3be5ec5e84804f139290e
Content-Type: image/png
Content-Transfer-Encoding: base64
Content-ID: <part11.07090401.08060000@dynamicdevices.co.uk>
X-Attachment-Id: ec530e0a8dc4e74a_0.1.3

iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAACXBIWXMAAAsTAAALEwEAmpwYAAAA
GXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAq1JREFUeNqMk0trE1EUx/935s4k
k1czbVpfWEctRaFiKZiCUCjqooggxZ0KfgC/QcVF1/oRBLsRXQjxgSu7qAsFpYuWoliLTaSNUJvQ
vJvceVzPndBSF0KHOTPD5fz+55z/vcNmXi2OZuKRHIWTiho4zFVruyg1OwWKaW7HzNz1kUEnk4pD
0xh2fQm6keDsvwJBIFGqNZ23K79yPBWNOJJH8K3q4VPVhfABjwQCSuSMQUiJXkNDNsVhHxDlxNgx
y+GmYaDuMbwvd9Ck0gpOcg2Xeo3wW0Wx7ePhzxZuDZgYT/JQgJG4ruvgLrXzmxL24ITOMHM+jpj+
7wg3jkVwb6kOUM5YQg/XFKu5gfroVhL0nsjwEF4stzA1v447Hzew0XIxHNcxngKebAnsMSo0EQSw
qFggyUBaGDBl1yh6nemz8aXOcHm+gNmv23i52cAmVVmqtMmrAIrlqqpqNkqPbaKerlcw1hdDNtMN
wMbrYh0vim209Cg6lL/ZEhhOmGHHmppDVeuQ221aWG4ZmFrIYy6/g4raErpunkjiebYfV9OgHImK
1ENm34OAYItcVQKTGQN3HRsPVko4+S6PoTc/sLDVCIXuD0ZD8ENdhoxiudpnNfVZk+FzQ+IKmTh5
JIGRnggerdWxQ1lpo+t6peOFB2SruUuMFZ4RrlSUgElx0fDx+HsNo7YVxrOstb+NapzZVeokiIJJ
P2S6HVBPUs1Dj3MWx05TwzVyfaKXI22qygwVypwreqgYSWgywAUuQkaxXPg+dl0POtMgKMb7e3Cq
WsdaTWBV7EKQwLLQ0NFMpDpVjBgebp8+GjLC82gEVxTWyjVnqC8F2+oe0+NWGmMHTqFH+91oC3A9
gUTERItgYuB6boEHnjtd+FPK5ctVR2r6oX5nRmMwTxSY707/FWAAwixkevHIXSQAAAAASUVORK5C
YII=

--001a11c3be5ec5e84804f139290e
Content-Type: image/png
Content-Transfer-Encoding: base64
Content-ID: <part9.05010804.02030100@dynamicdevices.co.uk>
X-Attachment-Id: ec530e0a8dc4e74a_0.1.2

iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAACXBIWXMAAAsTAAALEwEAmpwYAAAA
GXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAgRJREFUeNqUUs9r1EAU/jKZ7I+2
abBZVikKoYhCsbB/gXcFwV7Eu3jwInjyogdBj3oSPHm14KGhBwuC/gkKUqtVSglYarduKutu2c1m
MuO82dqk1YX6YJL35r3vez/mWbWbCw3fd0PfnwjciQqOI51uH3HcjeK4M8+nToyHd640gnP1SViW
dSwCpRS+7vwKniy9D7k3WQl2+xYWv7Sx2epgxmMmaKMtcbrmjiSZrjL4U+MBr5RsfGwlEJr1jGvh
8dXzJuD24hqa3cFIgt09C1zn4kJk6KViWBovlgmk2jdKUn0IyykoSYeBbzbbuPXyk9GXVluoudVD
INtmqHtjOvNwVoTlmf5k+5mo+2fXZo3+4u5bbD24aPSVrQ7mpl20ewL3ltfxORaGhHCMylBCakNC
SfXPcglM4lU5Hl4+i+bPPYMhLJNCoKQbNkQqJ2CFF1149x33X60fkIhMGgxhGZXBiUDPwS5kHXPy
iT56HSH88COfhT6EMViZZXCMIeEUFsktOQe6c2TByCYMYfmAWPRlov92kaCcV2AfISCbvIRlqWYp
QaGv+5KFxp1yXgHdF32kE4awVv3Gc3XpwizWegp6e1Fy7L9eYbC/J398tO0zXGJ5ZVW3kKTRt53t
YO7kKXCnPGLvnEOWSBNsNLeRDkRkedefNsBYqN8twP+IVBGknP8twABFyPH3kUzF5AAAAABJRU5E
rkJggg==

--001a11c3be5ec5e84804f139290e--
