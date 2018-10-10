Return-Path: <simon.chamlian@mpbc.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1ABFBE00AB3; Wed, 10 Oct 2018 13:04:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.174 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com
	[209.85.160.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1DC4CE00718
	for <yocto@yoctoproject.org>; Wed, 10 Oct 2018 13:04:07 -0700 (PDT)
Received: by mail-qt1-f174.google.com with SMTP id j46-v6so7203454qtc.9
	for <yocto@yoctoproject.org>; Wed, 10 Oct 2018 13:04:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mpbc-ca.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=i02mX+M0Z1ow0JGOtctyvbg7nS/mRI0h3wiiqWBWFko=;
	b=j48uEsyhqgntK9MFXzQibvP0BpgjcsDg+yhBqkTGPR0sSC+90GDuOvpnHcZ7ZL+RsO
	erO6jLiq8PEt1Npi5+p3/QY9tjD5wUt+zNTJPHUtJQGx+JR+920ZnmxCp6R6d1OQdHi1
	vale7+y+vcPq/64CryOQB9O5em+9bjClovTLbCpQpCANr4IvB2Kw1sf9cZkUMz1EUGI3
	jZlbI5QrHyVKykQpSfohNBzgMw9rFnz0rSjtFlAmcCEsSo4WyyZ/Mq5B1Oubjb8IXtcu
	etg9NTsIjQXnOWjPf/tv7w6EihdoUnMIBxSXHGCg1HUWY0IAU6mfegFj9kqsN/yI8I3z
	U15w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=i02mX+M0Z1ow0JGOtctyvbg7nS/mRI0h3wiiqWBWFko=;
	b=UZyBqAvgdMYpM7+kE2CoZKUYF8ZPjpdCo20Bjshl/3XE/dWU+ZlBLlv0O5SGnappNJ
	uzeD4Uh+AkBI6d6JSRRHlDKDB+5qTmY2FikvXvJPvQcNoIne8gRvpjr91chC3zlrW376
	73FllMn6zld0AsWhUOOJMYYV+dKKeZuzvIz5z3nTpFeFCTqotchB6quP8Kj3SZr6LoMw
	Z/UW4qwhvHG9aCNQTrJdnzMzz/VmBkxUTyB0qiLE9Zd7Sj3WQ0EIqIuGo3TezP2sd44U
	55dQLdVAOHr70VsHs8nmhkCFmX46x5e8BfduEYe27Lfy5chWcW/jjRZC+QhCvu9Yt0yN
	TGVg==
X-Gm-Message-State: ABuFfogEAlzJg50dv1YHFYc+Vrf0dl/6+Jvw8aiP1VgjEcRGRpCJhN3H
	nRHcr/+PJtCh6LrKnIuEysij9R03vwsLW+tLPxWDRH8StqQ4Yw==
X-Google-Smtp-Source: ACcGV61kfCANB638bqTscYQngj0d7WqxLgk8bXvYJ2SQn3mvFSJDS9Cqi1fa91afXLeCxSbubFxJK3C8uHaku1KTsco=
X-Received: by 2002:ac8:45d5:: with SMTP id
	e21-v6mr24054024qto.261.1539201847206; 
	Wed, 10 Oct 2018 13:04:07 -0700 (PDT)
MIME-Version: 1.0
References: <CANmTPBb3rEK8t6j+bUX92dS7UZCQpu0-ZoEGCDzgq7FBgZUXOA@mail.gmail.com>
In-Reply-To: <CANmTPBb3rEK8t6j+bUX92dS7UZCQpu0-ZoEGCDzgq7FBgZUXOA@mail.gmail.com>
From: Simon Chamlian <simon.chamlian@mpbc.ca>
Date: Wed, 10 Oct 2018 16:03:55 -0400
Message-ID: <CANmTPBaHBNZT=391K72aYVm4Gbj6Pn=XGYZf1ObJN+Umws+1fQ@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: failed to compile php_7.2.10.bb
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
X-List-Received-Date: Wed, 10 Oct 2018 20:04:09 -0000
Content-Type: multipart/alternative; boundary="0000000000005738f20577e55b7c"

--0000000000005738f20577e55b7c
Content-Type: text/plain; charset="UTF-8"

Hi,

I tried to bitbake php_7.2.10.bb and I am getting the following error.

Did anyone tried to compile php_7.2.10.bb ?

Any clue on what the issue can be ?

*$ bitbake php*
Loading cache: 100%
|###########################################################################################################################################|
Time: 0:00:01
Loaded 3104 entries from dependency cache.
ERROR: ExpansionError during parsing
/opt/PHYTEC_BSPs/yocto_imx7/sources/meta-openembedded/meta-oe/recipes-devtools/php/
php_7.2.10.bb
| ETA:  --:--:--
Traceback (most recent call last):
  File
"/opt/PHYTEC_BSPs/yocto_imx7/sources/poky/meta/classes/base.bbclass", line
375, in
__anon_656__opt_PHYTEC_BSPs_yocto_imx7_sources_poky_meta_classes_base_bbclass(d=<bb.data_smart.DataSmart
object at 0x7f9ee5719860>):
             pkgconfig = (d.getVar('PACKAGECONFIG', True) or "").split()
    >        pn = d.getVar("PN", True)

  File
"/opt/PHYTEC_BSPs/yocto_imx7/sources/poky/bitbake/lib/bb/data_smart.py",
line 569, in DataSmart.getVar(var='PACKAGECONFIG', expand=True,
noweakdefault=False, parsing=False):
         def getVar(self, var, expand, noweakdefault=False, parsing=False):
    >        return self.getVarFlag(var, "_content", expand, noweakdefault,
parsing)

  File
"/opt/PHYTEC_BSPs/yocto_imx7/sources/poky/bitbake/lib/bb/data_smart.py",
line 737, in DataSmart.getVarFlag(var='PACKAGECONFIG', flag='_content',
expand=True, noweakdefault=False, parsing=False):
                     cachename = var + "[" + flag + "]"
    >            value = self.expand(value, cachename)

  File
"/opt/PHYTEC_BSPs/yocto_imx7/sources/poky/bitbake/lib/bb/data_smart.py",
line 410, in DataSmart.expand(s="mysql sqlite3 imap opcache
openssl                    ${@bb.utils.filter('DISTRO_FEATURES', 'ipv6
pam', d)}  apache2 sqlite3 pgsql ", varname='PACKAGECONFIG'):
         def expand(self, s, varname = None):
    >        return self.expandWithRefs(s, varname).value

  File
"/opt/PHYTEC_BSPs/yocto_imx7/sources/poky/bitbake/lib/bb/data_smart.py",
line 400, in DataSmart.expandWithRefs(s="mysql sqlite3 imap opcache
openssl                    ${@bb.utils.filter('DISTRO_FEATURES', 'ipv6
pam', d)}  apache2 sqlite3 pgsql ", varname='PACKAGECONFIG'):
                 except Exception as exc:
    >                raise ExpansionError(varname, s, exc) from exc

bb.data_smart.ExpansionError: Failure expanding variable PACKAGECONFIG,
expression was mysql sqlite3 imap opcache openssl
${@bb.utils.filter('DISTRO_FEATURES', 'ipv6 pam', d)}  apache2 sqlite3
pgsql  which triggered exception AttributeError: module 'bb.utils' has no
attribute 'filter'


Summary: There was 1 ERROR message shown, returning a non-zero exit code.
*$*

Thanks,
S.

--0000000000005738f20577e55b7c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div>Hi,</div><div><br><=
/div><div>I tried to bitbake <span style=3D"color:rgb(0,0,0)"><span style=
=3D"font-family:monospace,monospace"><a href=3D"http://php_7.2.10.bb">php_7=
.2.10.bb</a> and</span></span> I am getting the following error.<br></div><=
div><br></div><div>Did anyone tried to compile <a href=3D"http://php_7.2.10=
.bb">php_7.2.10.bb</a> ?=C2=A0 <br></div><div><br></div><div>Any clue on wh=
at the issue can be ?</div><div><br></div><div><span style=3D"font-family:m=
onospace,monospace"><b>$ bitbake php</b><br>Loading cache: 100% |##########=
###########################################################################=
######################################################| Time: 0:00:01<br>Lo=
aded 3104 entries from dependency cache.<br><span style=3D"color:rgb(255,0,=
0)">ERROR: ExpansionError during parsing /opt/PHYTEC_BSPs/yocto_imx7/source=
s/meta-openembedded/meta-oe/recipes-devtools/php/<a href=3D"http://php_7.2.=
10.bb">php_7.2.10.bb</a>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0</span>=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | ETA:=C2=A0 --:--:--<br>Traceback (most rec=
ent call last):<br>=C2=A0 File &quot;/opt/PHYTEC_BSPs/yocto_imx7/sources/po=
ky/meta/classes/base.bbclass&quot;, line 375, in __anon_656__opt_PHYTEC_BSP=
s_yocto_imx7_sources_poky_meta_classes_base_bbclass(d=3D&lt;bb.data_smart.D=
ataSmart object at 0x7f9ee5719860&gt;):<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 pkgconfig =3D (d.getVar(&#39;PAC=
KAGECONFIG&#39;, True) or &quot;&quot;).split()<br>=C2=A0=C2=A0=C2=A0 &gt;=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 pn =3D d.getVar(&quot;PN&quot;, =
True)<br>=C2=A0=C2=A0=C2=A0=C2=A0 <br>=C2=A0 File &quot;/opt/PHYTEC_BSPs/yo=
cto_imx7/sources/poky/bitbake/lib/bb/data_smart.py&quot;, line 569, in Data=
Smart.getVar(var=3D&#39;PACKAGECONFIG&#39;, expand=3DTrue, noweakdefault=3D=
False, parsing=3DFalse):<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 def getVar(self, var, expand, noweakdefault=3DFalse, parsing=3DFalse):<=
br>=C2=A0=C2=A0=C2=A0 &gt;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return=
 self.getVarFlag(var, &quot;_content&quot;, expand, noweakdefault, parsing)=
<br>=C2=A0=C2=A0=C2=A0=C2=A0 <br>=C2=A0 File &quot;/opt/PHYTEC_BSPs/yocto_i=
mx7/sources/poky/bitbake/lib/bb/data_smart.py&quot;, line 737, in DataSmart=
.getVarFlag(var=3D&#39;PACKAGECONFIG&#39;, flag=3D&#39;_content&#39;, expan=
d=3DTrue, noweakdefault=3DFalse, parsing=3DFalse):<br>=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 cachename =3D var + &quot;[&quot; + flag + &quot;]=
&quot;<br>=C2=A0=C2=A0=C2=A0 &gt;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 value =3D self.expand(value, cachename)<br>=C2=A0=
=C2=A0=C2=A0=C2=A0 <br>=C2=A0 File &quot;/opt/PHYTEC_BSPs/yocto_imx7/source=
s/poky/bitbake/lib/bb/data_smart.py&quot;, line 410, in DataSmart.expand(s=
=3D&quot;mysql sqlite3 imap opcache openssl=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 ${@bb.utils.filter(&#39;DISTRO_FEATURES&#39;, &#39;ipv6 pam&#39;,=
 d)}=C2=A0 apache2 sqlite3 pgsql &quot;, varname=3D&#39;PACKAGECONFIG&#39;)=
:<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 def expand(self, s, v=
arname =3D None):<br>=C2=A0=C2=A0=C2=A0 &gt;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 return self.expandWithRefs(s, varname).value<br>=C2=A0=C2=A0=
=C2=A0=C2=A0 <br>=C2=A0 File &quot;/opt/PHYTEC_BSPs/yocto_imx7/sources/poky=
/bitbake/lib/bb/data_smart.py&quot;, line 400, in DataSmart.expandWithRefs(=
s=3D&quot;mysql sqlite3 imap opcache openssl=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 ${@bb.utils.filter(&#39;DISTRO_FEATURES&#39;, &#39;ipv6 pam&#39;,=
 d)}=C2=A0 apache2 sqlite3 pgsql &quot;, varname=3D&#39;PACKAGECONFIG&#39;)=
:<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 except Exception as exc:<br>=C2=A0=C2=A0=C2=A0 =
&gt;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 raise ExpansionError(varname, s, exc) from exc<br>=C2=
=A0=C2=A0=C2=A0=C2=A0 <br>bb.data_smart.ExpansionError: Failure expanding v=
ariable PACKAGECONFIG, expression was mysql sqlite3 imap opcache openssl=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ${@bb.utils.filter(&#39;DISTRO_FEATURE=
S&#39;, &#39;ipv6 pam&#39;, d)}=C2=A0 apache2 sqlite3 pgsql=C2=A0 which tri=
ggered exception AttributeError: module &#39;bb.utils&#39; has no attribute=
 &#39;filter&#39;<br><br><br>Summary: There was 1 ERROR message shown, retu=
rning a non-zero exit code.<br><b>$</b> <br></span><br></div><div>Thanks,</=
div><div>S.</div><br></div></div></div>

--0000000000005738f20577e55b7c--
