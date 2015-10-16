Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 51F80E00AAB; Fri, 16 Oct 2015 09:54:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f42.google.com (mail-pa0-f42.google.com
	[209.85.220.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2E817E0048C
	for <yocto@yoctoproject.org>; Fri, 16 Oct 2015 09:54:28 -0700 (PDT)
Received: by pabrc13 with SMTP id rc13so125473268pab.0
	for <yocto@yoctoproject.org>; Fri, 16 Oct 2015 09:54:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=3FYJfqtcDMG3gyq9P0lrnc410phl6wxsV/nve7toXww=;
	b=tVlxclmTEFlSydBtTDW0f+4q9QslyytGYkxyLAkGNgJI7rfRNE8bcFKNuJpO1FH0Rp
	Pr+nvdjDnaW1hS/ajMV+nnVW2nbm4RrmF0H9W0i0LvyTUrp2KnGDxv+Sa/6zeqmjnJH4
	s6UHzH85LOJkHV7Y316yZ94u5/i74YU4zT/ul8Igev6rx7MJj5rCaJ7A5CLcMG6d/+ar
	jbdsjG2yW0jYLUORxetH1xC4UcMYfVLpLbddQ31aqRaWEQAv+6WzmaxUcOu9PuNbEoRw
	jVquiWWCISV7ZBlsJqS/mXmJmvEq2E6GyXZb3r+ep7gRV7xYL3iA5bE7tFcQ8HRSL618
	ItsA==
X-Received: by 10.66.139.201 with SMTP id ra9mr17583940pab.153.1445014467977; 
	Fri, 16 Oct 2015 09:54:27 -0700 (PDT)
Received: from ?IPv6:2601:646:8601:4580:2ca8:8b52:662d:520c?
	([2601:646:8601:4580:2ca8:8b52:662d:520c])
	by smtp.gmail.com with ESMTPSA id
	pk2sm22186143pbb.21.2015.10.16.09.54.27
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 16 Oct 2015 09:54:27 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.1 \(3096.4\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <365E1805BC95084CBE82381A0B86999401095F873E@EU-MBX-01.mgc.mentorg.com>
Date: Fri, 16 Oct 2015 09:54:17 -0700
Message-Id: <BD314512-DA81-48D9-B50D-4C41BD927127@gmail.com>
References: <365E1805BC95084CBE82381A0B86999401095F873E@EU-MBX-01.mgc.mentorg.com>
To: "Ahsan, Noor" <Noor_Ahsan@mentor.com>
X-Mailer: Apple Mail (2.3096.4)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: opkg 0.3.0 or rootfs task
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
X-List-Received-Date: Fri, 16 Oct 2015 16:54:31 -0000
X-Groupsio-MsgNum: 26881
Content-Type: multipart/signed;
	boundary="Apple-Mail=_9E9F99BB-A797-41A9-BFED-75F3C303D348";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_9E9F99BB-A797-41A9-BFED-75F3C303D348
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_26C42B5F-8228-44A9-A94B-1066FF1C84B5"

--Apple-Mail=_26C42B5F-8228-44A9-A94B-1066FF1C84B5
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Oct 16, 2015, at 5:47 AM, Ahsan, Noor <Noor_Ahsan@mentor.com> =
wrote:
>=20
> Hello,
>=20
> I noticed that at the time of rootfs creation symbolic links of the =
ipk files present in deploy/ipk. The problem what have it while creation =
of symbolic link it take the full path till that ipk and remove slashes =
and convert them into underscores. Use that as the name of the symbolic =
link. This make a very long file names. If we have very long path then =
name of the symlink exceed from max filename limits. And we get =
following error
>=20
> Collected errors:
> * file_link: unable to stat =
`/var/jenkins/workspace/mel_cedar-main/buildhost/amd-ubuntu14-32b/buildtyp=
e/iot/machine/mel-dra7xx-evm/build_mel-dra7xx-evm/tmp/work/mel_dra7xx_evm-=
mel-linux-gnueabi/console-image/1.0-r0/rootfs//var/cache/opkg/volatile/fil=
e:_var_jenkins_workspace_mel_cedar-main_buildhost_amd-ubuntu14-32b_buildty=
pe_iot_machine_mel-dra7xx-evm_build_mel-dra7xx-evm_tmp_deploy_ipk_mel_dra7=
xx_evm_kernel-module-lttng-ring-buffer-client-mmap-overwrite_2.6.2+git0+7a=
88f8b506-r0.0_mel_dra7xx_evm.ipk': File name too long.
>=20
> Can anyone tell me why the addition of full path was added to the =
symlink name and can we remove it cause it is cause issues?

what does

getconf PATH_MAX /

show ?

>=20
> Noor
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> https://lists.yoctoproject.org/listinfo/yocto =
<https://lists.yoctoproject.org/listinfo/yocto>

--Apple-Mail=_26C42B5F-8228-44A9-A94B-1066FF1C84B5
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Oct 16, 2015, at 5:47 AM, Ahsan, Noor &lt;<a =
href=3D"mailto:Noor_Ahsan@mentor.com" =
class=3D"">Noor_Ahsan@mentor.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div =
class=3D"WordSection1" style=3D"page: WordSection1; font-family: =
HelveticaNeue; font-size: 13px; font-style: normal; font-variant: =
normal; font-weight: normal; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: =
0px;"><div style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; =
font-family: Calibri, sans-serif;" class=3D"">Hello,<o:p =
class=3D""></o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><o:p =
class=3D"">&nbsp;</o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D"">I noticed =
that at the time of rootfs creation symbolic links of the ipk files =
present in deploy/ipk. The problem what have it while creation of =
symbolic link it take the full path till that ipk and remove slashes and =
convert them into underscores. Use that as the name of the symbolic =
link. This make a very long file names. If we have very long path then =
name of the symlink exceed from max filename limits. And we get =
following error<o:p class=3D""></o:p></div><div style=3D"margin: 0in 0in =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D""><o:p class=3D"">&nbsp;</o:p></div><div style=3D"margin: 0in =
0in 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D"">Collected errors:<o:p class=3D""></o:p></div><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D"">* file_link: unable to stat =
`/var/jenkins/workspace/mel_cedar-main/buildhost/amd-ubuntu14-32b/buildtyp=
e/iot/machine/mel-dra7xx-evm/build_mel-dra7xx-evm/tmp/work/mel_dra7xx_evm-=
mel-linux-gnueabi/console-image/1.0-r0/rootfs//var/cache/opkg/volatile/fil=
e:_var_jenkins_workspace_mel_cedar-main_buildhost_amd-ubuntu14-32b_buildty=
pe_iot_machine_mel-dra7xx-evm_build_mel-dra7xx-evm_tmp_deploy_ipk_mel_dra7=
xx_evm_kernel-module-lttng-ring-buffer-client-mmap-overwrite_2.6.2+git0+7a=
88f8b506-r0.0_mel_dra7xx_evm.ipk': File name too long.<o:p =
class=3D""></o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><o:p =
class=3D"">&nbsp;</o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D"">Can =
anyone tell me why the addition of full path was added to the symlink =
name and can we remove it cause it is cause =
issues?</div></div></div></blockquote><div><br class=3D""></div><div>what =
does</div><div><br class=3D""></div><div>getconf PATH_MAX =
/</div><div><br class=3D""></div><div>show ?</div><br =
class=3D""><blockquote type=3D"cite" class=3D""><div class=3D""><div =
class=3D"WordSection1" style=3D"page: WordSection1; font-family: =
HelveticaNeue; font-size: 13px; font-style: normal; font-variant: =
normal; font-weight: normal; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: =
0px;"><div style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; =
font-family: Calibri, sans-serif;" class=3D""><o:p =
class=3D""></o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><o:p =
class=3D"">&nbsp;</o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D"">Noor<o:p =
class=3D""></o:p></div></div><span style=3D"font-family: HelveticaNeue; =
font-size: 13px; font-style: normal; font-variant: normal; font-weight: =
normal; letter-spacing: normal; orphans: auto; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; widows: =
auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; float: none; =
display: inline !important;" class=3D"">--<span =
class=3D"Apple-converted-space">&nbsp;</span></span><br =
style=3D"font-family: HelveticaNeue; font-size: 13px; font-style: =
normal; font-variant: normal; font-weight: normal; letter-spacing: =
normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px;" class=3D""><span =
style=3D"font-family: HelveticaNeue; font-size: 13px; font-style: =
normal; font-variant: normal; font-weight: normal; letter-spacing: =
normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px; float: none; display: inline =
!important;" =
class=3D"">_______________________________________________</span><br =
style=3D"font-family: HelveticaNeue; font-size: 13px; font-style: =
normal; font-variant: normal; font-weight: normal; letter-spacing: =
normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px;" class=3D""><span =
style=3D"font-family: HelveticaNeue; font-size: 13px; font-style: =
normal; font-variant: normal; font-weight: normal; letter-spacing: =
normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px; float: none; display: inline =
!important;" class=3D"">yocto mailing list</span><br style=3D"font-family:=
 HelveticaNeue; font-size: 13px; font-style: normal; font-variant: =
normal; font-weight: normal; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: =
0px;" class=3D""><a href=3D"mailto:yocto@yoctoproject.org" style=3D"color:=
 rgb(149, 79, 114); text-decoration: underline; font-family: =
HelveticaNeue; font-size: 13px; font-style: normal; font-variant: =
normal; font-weight: normal; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: =
0px;" class=3D"">yocto@yoctoproject.org</a><br style=3D"font-family: =
HelveticaNeue; font-size: 13px; font-style: normal; font-variant: =
normal; font-weight: normal; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: =
0px;" class=3D""><a href=3D"https://lists.yoctoproject.org/listinfo/yocto"=
 style=3D"color: rgb(149, 79, 114); text-decoration: underline; =
font-family: HelveticaNeue; font-size: 13px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto</a></div></blockq=
uote></div><br class=3D""></body></html>=

--Apple-Mail=_26C42B5F-8228-44A9-A94B-1066FF1C84B5--

--Apple-Mail=_9E9F99BB-A797-41A9-BFED-75F3C303D348
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlYhK8IACgkQuwUzVZGdMxRIiQCeK7ytSHYjodiX5f18scFNnLOX
55kAnjH71JENL/m/fhKJMD1t57OLAmdW
=Rzw/
-----END PGP SIGNATURE-----

--Apple-Mail=_9E9F99BB-A797-41A9-BFED-75F3C303D348--
