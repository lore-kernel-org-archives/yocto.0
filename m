Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-qa0-f41.google.com (mail-qa0-f41.google.com
	[209.85.216.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3DCADE002AC
	for <yocto@yoctoproject.org>; Wed, 12 Sep 2012 08:06:12 -0700 (PDT)
Received: by qafk30 with SMTP id k30so2812653qaf.14
	for <yocto@yoctoproject.org>; Wed, 12 Sep 2012 08:06:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:sender:date:x-google-sender-auth:message-id:subject
	:from:to:content-type:x-gm-message-state;
	bh=v6DWdPShQzIcOnsNeqruD4mT92EBmbiVuEPK7A9e3Ys=;
	b=j0H3vfLYfU36paKvH6Ymlwxj2Jtf0YC3ejMjoMfyxxIAgocVhre6CG6DEs4qbB4Sll
	ItIatKUuFaR2ooNpsN9gDNLfjWpBjYdUzHSWgGr05Pn9pVeAwx+7UoeHx50Ju4J9R5YF
	nxMbbZPUlPW+Vsj6qLUyKZ3xcPV+gGENdEQAHQ2EhNMdUQPPZrvZqE+4TqgIYBknIOlL
	X+8YkjOIYf/rYmuNxWCKmT0KYkDH+bTDEFITca8wUbdzcivo2tdPXAlHOz4ucJUOatqK
	JqYf3ZcZI5alYIWGAjQguXHuGXwwbxQOk4btLiKKuHpfVLcX491dIkX8Y0NM1K/K3134
	ywJA==
MIME-Version: 1.0
Received: by 10.229.136.137 with SMTP id r9mr6527132qct.146.1347462366656;
	Wed, 12 Sep 2012 08:06:06 -0700 (PDT)
Sender: rstreif@linuxfoundation.org
Received: by 10.49.116.77 with HTTP; Wed, 12 Sep 2012 08:06:06 -0700 (PDT)
Date: Wed, 12 Sep 2012 08:06:06 -0700
X-Google-Sender-Auth: KxOhr6wkuWSJRAVdpcR172RGs1s
Message-ID: <CA+gsK-qoz4u6OZV+FZN+LZq2AOgw5RajOW6DCJOnXbZGecva1w@mail.gmail.com>
From: Rudolf Streif <rudolf.streif@linux.com>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQlf28swWeAHxmnQfAuHgNLf0Am13+J9IhzKOAHHIBVPafOSM20/npi+dcH9sUIjhJOIx18q
Subject: [linux-yocto] 'bitbake linux-yocto' after 'bitbake linux-yocto -c compile -f' does not create image
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 12 Sep 2012 15:06:12 -0000
Content-Type: multipart/alternative; boundary=00248c711899b67a8404c98287ec

--00248c711899b67a8404c98287ec
Content-Type: text/plain; charset=ISO-8859-1

In Denil modifying kernel parameters and doing

bitbake linux-yocto -c compile -f
bitbake linux-yocto

worked perfectly fine. The tasks after compile were rerun and the new
kernel copied to tmp/deploy/images

In Edison 7.0.1 this does not seem to work anymore. The tasks do not rerun
and the kernel image is not deployed.

What has changed? Why does it not work anymore?

Thanks,
Rudi

--00248c711899b67a8404c98287ec
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

In Denil modifying kernel parameters and doing<div><br></div><div>bitbake l=
inux-yocto -c compile -f</div><div>bitbake linux-yocto</div><div><br></div>=
<div>worked perfectly fine. The tasks after compile were rerun and the new =
kernel copied to tmp/deploy/images</div>
<div><br></div><div>In Edison 7.0.1 this does not seem to work anymore. The=
 tasks do not rerun and the kernel image is not deployed.</div><div><br></d=
iv><div>What has changed? Why does it not work anymore?</div><div><br></div=
>
<div>Thanks,</div><div>Rudi</div>

--00248c711899b67a8404c98287ec--
