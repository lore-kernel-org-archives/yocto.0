Return-Path: <bianchirickkutta@gmail.com>
Received: from mail-vc0-f176.google.com (mail-vc0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AAC34E00B30
	for <yocto@yoctoproject.org>; Tue, 18 Mar 2014 09:10:32 -0700 (PDT)
Received: by mail-vc0-f176.google.com with SMTP id lc6so7354339vcb.7
	for <yocto@yoctoproject.org>; Tue, 18 Mar 2014 09:10:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=8ZGtw3Ah8biyaVojAP3iFk16I1OyaXnwNWehZtabZ0g=;
	b=jfEU1sTLPEekNqsE63KrZTkFscODZbQoapFflSoyucFKPdkQ47vKUpzAp8BZmKZSn5
	eD2xvf34WJwtb0uq2AF8VZuU+araMcy1TXQno+L8BJb4Ew5BBmJnMLBdFLIVkKvCR01e
	gs32LQ9vczUs9P3rmk5GqjMZNPqqIA2Faya+mnSRf+Gn+p9fRQIRAzVDLvtkPmTF+rD7
	2GHhg+81lx5P/BGWwJn0LyBUBUJPXjUqZNnU6aXW8fzD/hoM+bkG/grjWg5XvzkXXlVc
	KiWY/a6EA6ukGy81z4u9OZ+zH5rN1hSZjEQM91BLiGR38m0Vjvimv6bnszn+POrZp84q
	Dy+w==
MIME-Version: 1.0
X-Received: by 10.52.108.228 with SMTP id hn4mr1806469vdb.43.1395159031415;
	Tue, 18 Mar 2014 09:10:31 -0700 (PDT)
Received: by 10.220.96.66 with HTTP; Tue, 18 Mar 2014 09:10:31 -0700 (PDT)
Date: Tue, 18 Mar 2014 09:10:31 -0700
Message-ID: <CAA7h+EoDLUqhc1LsciVo55QxLNX0ZQvLg9AKCffpKCctX4AMxQ@mail.gmail.com>
From: Rick Bianchi <bianchirickkutta@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Losing Ethernet after reboot
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
X-List-Received-Date: Tue, 18 Mar 2014 16:10:34 -0000
Content-Type: multipart/alternative; boundary=bcaec548a8e979086404f4e3c650

--bcaec548a8e979086404f4e3c650
Content-Type: text/plain; charset=ISO-8859-1

I losing Ethernet after every reboot. What is the process to have it come
up manually?

Image: Dylan gumstix-console

I have already added eth0 auto to my /etc/network/interfaces.


At the moment I need to run the following after every reboot:

ifconfig eth0 up
udhcpc eth0

--bcaec548a8e979086404f4e3c650
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div>I losing Ethernet after every reboot. What is the=
 process to have it come up manually?</div><div><br></div><div>Image: Dylan=
 gumstix-console</div><div><br></div><div>I have already added eth0 auto to=
 my /etc/network/interfaces.</div>
<div><br></div><div><br></div><div>At the moment I need to run the followin=
g after every reboot:</div><div><br></div><div>ifconfig eth0 up<br>udhcpc e=
th0</div><div><br></div></div>

--bcaec548a8e979086404f4e3c650--
