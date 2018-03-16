Return-Path: <balazovic.peter@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 435DFE00A39; Fri, 16 Mar 2018 05:13:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (balazovic.peter[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f171.google.com (mail-pf0-f171.google.com
	[209.85.192.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 32A18E00873
	for <yocto@yoctoproject.org>; Fri, 16 Mar 2018 05:13:57 -0700 (PDT)
Received: by mail-pf0-f171.google.com with SMTP id d26so4070875pfn.5
	for <yocto@yoctoproject.org>; Fri, 16 Mar 2018 05:13:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=TqY+s8IxCp6e2HwLmu/nlZH/rZUelhGixcxvJFd0PhA=;
	b=bkn34ThO+zj/R1k2yj4Py1gYXL6X3tCclPVumI7gtYkA8xCyE44e9gRSRM20cYBCCo
	rRrbIK88vJ8hN+ZwkjwjGWzqGs7bYqCGtMULymhh3iXh9NKpd/+qe6H9OAhaaYdDT9Bj
	rGzhWOAZ5QHHAfHZy5mfd0/ZzuPAUZknPypRQCp9rw7by21Cg59FqpVlatE2QIHD/bkW
	9DOSHw8L7moLeO5Pd3Xb0rR+ybfZf2OXwOwdrvNoBlGilanj61MVOUrXZ5RYzuroVYzn
	FlC51Lw3wzGabzeiVkphw9rSbmNq2dCUEtnREqvp09tbdBrHdq+V2VWNU16n0ZvYk+71
	g0QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=TqY+s8IxCp6e2HwLmu/nlZH/rZUelhGixcxvJFd0PhA=;
	b=HHilCHasEO8YwnbiChZNPIFIBnktzv/UBkIj5wSy5zLBjqhIC32uvzwGl//RL+yDUZ
	wAYSha0CFYdfPm9NqFaVVf4U2NswyQN1IUsJsWVPuxkulPsPfdFTV/QUyNmpAgRDwfMo
	JPaPMePMridBGdLgq93qalV4SBwetGOSNsMV+ywduU+SNXIVRVcFYhEcH7g6hPlyxEqA
	q/Uw8Gs2VZ9ou88Ug8guaZYefAFvqto5BQNYMl431ji1wv1a4P4loiBkzGa4OYrwZPNh
	HXyOHZ8qGVSYVvQWLQNB81XcJpwcqmL+cJeHXLkSjhQ5vma2B27d3vgh2qKiUH9gezT/
	sEgA==
X-Gm-Message-State: AElRT7Fbbf4oxkIpGX1/BH/Qzt/Ovdu4AXqaB1YvECfpiuBt4xy7jHjR
	sXFlmdSPoxFAU6Mxv5jXQ1TwICLuReOpF7mjCbM=
X-Google-Smtp-Source: AG47ELv//FWWuhMrk75lb2oFdyilwwK3DN+gTEafePNdojXKZxl0WMZ5gZWUnbMVXbzy1d2oWIGhsU6v/pwDeIhw45Q=
X-Received: by 10.98.33.154 with SMTP id o26mr1434829pfj.54.1521202437451;
	Fri, 16 Mar 2018 05:13:57 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.184.9 with HTTP; Fri, 16 Mar 2018 05:13:56 -0700 (PDT)
In-Reply-To: <CAFq4t4j5JY74S72EtAW-bjV+e7NATmzEqv4ybMupu5g1iKTC2g@mail.gmail.com>
References: <CAFq4t4ghBNE+1SXZ7L-KuRMfw6z7E0a4ageKi33UbKbftXL0rQ@mail.gmail.com>
	<alpine.LFD.2.21.1803150856190.32449@localhost.localdomain>
	<CANx9H-Ci26zKAYyKxpv5UehejFwpDF5Ww_JRzJnNNqhJFZy7hg@mail.gmail.com>
	<CAFq4t4j5JY74S72EtAW-bjV+e7NATmzEqv4ybMupu5g1iKTC2g@mail.gmail.com>
From: Peter Balazovic <balazovic.peter@gmail.com>
Date: Fri, 16 Mar 2018 13:13:56 +0100
Message-ID: <CAFq4t4hC_5K5Ot-Q8KGaV0Ub4rgwKzGUxsNkfP6VT0ZMvPxmkA@mail.gmail.com>
To: Tim Orling <ticotimo@gmail.com>,
	Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: OpenCV with python3
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
X-List-Received-Date: Fri, 16 Mar 2018 12:13:59 -0000
Content-Type: multipart/alternative; boundary="001a113dcba6ea73cf0567868adb"

--001a113dcba6ea73cf0567868adb
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

By allowing "python3-opencv" I end up with errors ....

ERROR: fsl-image-qt5-1.0-r0 do_rootfs: python3-opencv not found in the
feeds .
ERROR: fsl-image-qt5-1.0-r0 do_rootfs: This is often caused by an empty
package declared in a recipe's PACKAGES variable. (Empty packages are not
constructed unless ALLOW_EMPTY_<pkg> =3D '1' is used.)
ERROR: fsl-image-qt5-1.0-r0 do_rootfs: Function failed: do_rootfs

where to look at on problem?


On Fri, Mar 16, 2018 at 8:09 AM, Peter Balazovic <balazovic.peter@gmail.com=
>
wrote:

> That I was thinking to have =E2=80=9Cpython3-opencv=E2=80=9D but it's fai=
ling to build
>
> I found opencv_3.1.bbappend with my sources where I see
>
> PACKAGECONFIG_remove_imx =3D "eigen python3"
>
> I guess that might causing a problem to build opencv for python3... I'll
> remove and check again to build.
>
> BTW what's the benefit of using CORE_IMAGE_EXTRA_INSTALL over
> IMAGE_INSTALL_append ?
>
>
> On Fri, Mar 16, 2018 at 6:29 AM, Tim Orling <ticotimo@gmail.com> wrote:
>
>> Ditto for Robert=E2=80=99s comment. Please look at the bitbake manual an=
d
>> understand what the syntax means [1].
>>
>> Also,  =E2=80=9Cpython-foo=E2=80=9D means the python2 version. The defau=
lt PACKAGECONFIG
>> [2] for opencv builds for python3. You need =E2=80=9Cpython3-opencv=E2=
=80=9D.
>>
>> Finally, I would encourage you to use CORE_IMAGE_EXTRA_INSTALL [3] rathe=
r
>> than IMAGE_INSTALL in the local.conf context.
>>
>> [1] https://www.yoctoproject.org/docs/current/bitbake-user-m
>> anual/bitbake-user-manual.html#appending-and-prepending
>> [2] http://cgit.openembedded.org/meta-openembedded/tree/meta
>> -oe/recipes-support/opencv/opencv_3.3.bb?h=3Dmaster#n90
>> [3] https://www.yoctoproject.org/docs/current/ref-manual/ref
>> -manual.html#var-CORE_IMAGE_EXTRA_INSTALL
>>
>> On Thu, Mar 15, 2018 at 5:57 AM Robert P. J. Day <rpjday@crashcourse.ca>
>> wrote:
>>
>>> On Thu, 15 Mar 2018, Peter Balazovic wrote:
>>>
>>> > Hello all,
>>> > I have python module of OpenCV for python 2.7 on my Yocto image addin=
g
>>> via local.conf
>>> >
>>> > IMAGE_INSTALL_append +=3D =E2=80=9C python-opencv=E2=80=9D
>>>
>>>   i know i've harped on this before, but can people please stop
>>> combining the constructs "_append" and "+=3D" in the same expression?
>>>
>>> rday--
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>
>

--001a113dcba6ea73cf0567868adb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div style=3D"color:rgb(34,34,34);font-family:arial,sans-s=
erif;font-size:small;font-style:normal;font-variant-ligatures:normal;font-v=
ariant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;t=
ext-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;text=
-decoration-style:initial;text-decoration-color:initial">By allowing &quot;=
python3-opencv&quot; I end up with errors ....</div><div style=3D"color:rgb=
(34,34,34);font-family:arial,sans-serif;font-size:small;font-style:normal;f=
ont-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;lette=
r-spacing:normal;text-align:start;text-indent:0px;text-transform:none;white=
-space:normal;word-spacing:0px;text-decoration-style:initial;text-decoratio=
n-color:initial"><br></div><div style=3D"color:rgb(34,34,34);font-family:ar=
ial,sans-serif;font-size:small;font-style:normal;font-variant-ligatures:nor=
mal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-ali=
gn:start;text-indent:0px;text-transform:none;white-space:normal;word-spacin=
g:0px;text-decoration-style:initial;text-decoration-color:initial">ERROR: f=
sl-image-qt5-1.0-r0 do_rootfs: python3-opencv not found in the feeds .</div=
><div style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:s=
mall;font-style:normal;font-variant-ligatures:normal;font-variant-caps:norm=
al;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;t=
ext-transform:none;white-space:normal;word-spacing:0px;text-decoration-styl=
e:initial;text-decoration-color:initial">ERROR: fsl-image-qt5-1.0-r0 do_roo=
tfs: This is often caused by an empty package declared in a recipe&#39;s PA=
CKAGES variable. (Empty packages are not constructed unless ALLOW_EMPTY_&lt=
;pkg&gt; =3D &#39;1&#39; is used.)</div><div style=3D"color:rgb(34,34,34);f=
ont-family:arial,sans-serif;font-size:small;font-style:normal;font-variant-=
ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:no=
rmal;text-align:start;text-indent:0px;text-transform:none;white-space:norma=
l;word-spacing:0px;text-decoration-style:initial;text-decoration-color:init=
ial">ERROR: fsl-image-qt5-1.0-r0 do_rootfs: Function failed: do_rootfs</div=
><div style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:s=
mall;font-style:normal;font-variant-ligatures:normal;font-variant-caps:norm=
al;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;t=
ext-transform:none;white-space:normal;word-spacing:0px;text-decoration-styl=
e:initial;text-decoration-color:initial"><br></div><div style=3D"color:rgb(=
34,34,34);font-family:arial,sans-serif;font-size:small;font-style:normal;fo=
nt-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter=
-spacing:normal;text-align:start;text-indent:0px;text-transform:none;white-=
space:normal;word-spacing:0px;text-decoration-style:initial;text-decoration=
-color:initial">where to look at on problem?</div><br></div><div class=3D"g=
mail_extra"><br><div class=3D"gmail_quote">On Fri, Mar 16, 2018 at 8:09 AM,=
 Peter Balazovic <span dir=3D"ltr">&lt;<a href=3D"mailto:balazovic.peter@gm=
ail.com" target=3D"_blank">balazovic.peter@gmail.com</a>&gt;</span> wrote:<=
br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left=
:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div><div>That I was thi=
nking to have =E2=80=9Cpython3-opencv=E2=80=9D but it&#39;s failing to buil=
d<br></div><br>I found opencv_3.1.bbappend with my sources where I see <br>=
<br>PACKAGECONFIG_remove_imx =3D &quot;eigen python3&quot;<br><br></div>I g=
uess that might causing a problem to build opencv for python3... I&#39;ll r=
emove and check again to build.<br><div>=C2=A0<br></div><div>BTW what&#39;s=
 the benefit of using CORE_IMAGE_EXTRA_INSTALL over IMAGE_INSTALL_append ?<=
br><br></div><div><div class=3D"h5"><div class=3D"gmail_extra"><br><div cla=
ss=3D"gmail_quote">On Fri, Mar 16, 2018 at 6:29 AM, Tim Orling <span dir=3D=
"ltr">&lt;<a href=3D"mailto:ticotimo@gmail.com" target=3D"_blank">ticotimo@=
gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div><di=
v dir=3D"auto">Ditto for Robert=E2=80=99s comment. Please look at the bitba=
ke manual and understand what the syntax means [1].</div><br><div dir=3D"au=
to">Also, =C2=A0=E2=80=9Cpython-foo=E2=80=9D means the python2 version. The=
 default PACKAGECONFIG [2] for opencv builds for python3. You need =E2=80=
=9Cpython3-opencv=E2=80=9D.</div></div><div dir=3D"auto"><br></div><div dir=
=3D"auto">Finally, I would encourage you to use CORE_IMAGE_EXTRA_INSTALL [3=
] rather than IMAGE_INSTALL in the local.conf context.</div><div dir=3D"aut=
o"><br></div><div dir=3D"auto">[1]=C2=A0<a href=3D"https://www.yoctoproject=
.org/docs/current/bitbake-user-manual/bitbake-user-manual.html#appending-an=
d-prepending" target=3D"_blank">https://www.yoctoproject.o<wbr>rg/docs/curr=
ent/bitbake-user-m<wbr>anual/bitbake-user-manual.html<wbr>#appending-and-pr=
epending</a></div><div><div dir=3D"auto">[2]=C2=A0<a href=3D"http://cgit.op=
enembedded.org/meta-openembedded/tree/meta-oe/recipes-support/opencv/opencv=
_3.3.bb?h=3Dmaster#n90" target=3D"_blank">http://cgit.openembedded.o<wbr>rg=
/meta-openembedded/tree/meta<wbr>-oe/recipes-support/opencv/<wbr>opencv_3.3=
.bb?h=3Dmaster#n90</a></div><div dir=3D"auto">[3]=C2=A0<a href=3D"https://w=
ww.yoctoproject.org/docs/current/ref-manual/ref-manual.html#var-CORE_IMAGE_=
EXTRA_INSTALL" target=3D"_blank">https://www.yoctoproject.o<wbr>rg/docs/cur=
rent/ref-manual/ref<wbr>-manual.html#var-CORE_IMAGE_<wbr>EXTRA_INSTALL</a><=
/div><br><div class=3D"gmail_quote"><div>On Thu, Mar 15, 2018 at 5:57 AM Ro=
bert P. J. Day &lt;<a href=3D"mailto:rpjday@crashcourse.ca" target=3D"_blan=
k">rpjday@crashcourse.ca</a>&gt; wrote:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:=
1ex">On Thu, 15 Mar 2018, Peter Balazovic wrote:<br>
<br>
&gt; Hello all,<br>
&gt; I have python module of OpenCV for python 2.7=C2=A0on my Yocto image a=
dding via local.conf<br>
&gt;<br>
&gt; IMAGE_INSTALL_append +=3D =E2=80=9C python-opencv=E2=80=9D<br>
<br>
=C2=A0 i know i&#39;ve harped on this before, but can people please stop<br=
>
combining the constructs &quot;_append&quot; and &quot;+=3D&quot; in the sa=
me expression?<br>
<br>
rday--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
</blockquote></div></div>
</blockquote></div><br></div></div></div></div>
</blockquote></div><br></div>

--001a113dcba6ea73cf0567868adb--
