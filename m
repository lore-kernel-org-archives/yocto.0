Return-Path: <diego.sueiro@gmail.com>
Received: from mail-qg0-f47.google.com (mail-qg0-f47.google.com
	[209.85.192.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1094DE0099B
	for <yocto@yoctoproject.org>; Tue, 29 Apr 2014 07:17:31 -0700 (PDT)
Received: by mail-qg0-f47.google.com with SMTP id e89so287795qgf.34
	for <yocto@yoctoproject.org>; Tue, 29 Apr 2014 07:17:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=TG4ByPaWGNbjMLnoDlRMna73osVSKDdCw52Gj0QZR3k=;
	b=sL0mVmEvDRCOGGnH5yMDa8KxXr4jqD0+Mwc8v68LJ91Bxa+r26LDR8K52QXFsStUXo
	Zo8zYbh5Kz/ju2TrAlUdFJYUhQ8UymRgTy/s3tjNUb5488KsRZkWuH2hk64Vo0nomkRJ
	qy9gJrUJPSSXTdNd8FLf9dRNwftPR60+l4mhGHN9MeLEF45HrgI/iO+F2e5XnqG8HL+D
	czaNW67MGCW+MAT2RFlRWEYcmKGmWMF5L3629o75gCAMJFfU5dT2F0txE1eWAnQsXgsZ
	CT0ikbCJET3UDpNKfPXoV4R8fbXvMk5KhrVZMH512alQzrtpzmeEk44CypQxbNtj2Pbf
	yuxQ==
X-Received: by 10.140.103.74 with SMTP id x68mr40007225qge.82.1398781050637;
	Tue, 29 Apr 2014 07:17:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.48.112 with HTTP; Tue, 29 Apr 2014 07:17:10 -0700 (PDT)
From: Diego Sueiro <diego.sueiro@gmail.com>
Date: Tue, 29 Apr 2014 11:17:10 -0300
Message-ID: <CAMCfZKG6Q5jQuQABsDOijHOcqm-v1=gPnvLdXZrP88YNfT8+rw@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Missing kernel, modules and dtb for beaglebone on core-image-minimal
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
X-List-Received-Date: Tue, 29 Apr 2014 14:17:34 -0000
Content-Type: multipart/alternative; boundary=001a1134eda8a4536504f82f17fd

--001a1134eda8a4536504f82f17fd
Content-Type: text/plain; charset=ISO-8859-1

Folks,

I'm using daisy branch of yocto and I realized that kernel and dtb files
were not present on /boot and there were no modules installed on
/lib/modules/3.14.0-yocto-standard.



Regards,

--
*dS
Diego Sueiro

Administrador do Embarcados
www.embarcados.com.br<http://www.embarcados.com.br/?utm_source=assinatura_diego&utm_medium=e-mail&utm_campaign=Assinatura%20Email%20Diego>

/*long live rock 'n roll*/

--001a1134eda8a4536504f82f17fd
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Folks,<div><br></div><div style>I&#39;m using daisy branch=
 of yocto and I realized that kernel and dtb files were not present on /boo=
t and there were no modules installed on /lib/modules/3.14.0-yocto-standard=
.</div>

<div style><br></div><div style><br></div><div><br clear=3D"all"><div><div =
dir=3D"ltr"><div>Regards,</div><div><br></div>--<br>*dS<br>Diego Sueiro<br>=
<br>Administrador do Embarcados<br><a href=3D"http://www.embarcados.com.br/=
?utm_source=3Dassinatura_diego&amp;utm_medium=3De-mail&amp;utm_campaign=3DA=
ssinatura%20Email%20Diego" target=3D"_blank">www.embarcados.com.br</a><br>

<br>/*long live rock &#39;n roll*/<br></div></div>
</div></div>

--001a1134eda8a4536504f82f17fd--
