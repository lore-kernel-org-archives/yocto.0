Received: from exchange.sewerin.com (exchange.sewerin.com [92.39.20.236])
 by mx.groups.io with SMTP id smtpd.web08.5422.1605961564271251538
 for <yocto@lists.yoctoproject.org>;
 Sat, 21 Nov 2020 04:26:04 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@lists.yoctoproject.org header.s=20140610 header.b=AxgbQPTD;
 spf=softfail (domain: lists.yoctoproject.org, ip: 92.39.20.236, mailfrom: yocto@lists.yoctoproject.org)
Received: from Pickup by Exchange.sewerin.de with Microsoft SMTP Server id
 15.0.1395.4; Fri, 20 Nov 2020 02:38:25 +0000
X-Sender: bounce+53643+51490+3618059+6691491@lists.yoctoproject.org
X-Receiver: Bastian.Ruppert@sewerin.com
x-endofinjectedxheaders: 5740
X-Received: by 127.0.0.2 with SMTP id 9Z6yYY3619394xxlZoRjQ2tm; Thu, 19 Nov 2020 18:36:09 -0800
X-Received: from mail-vs1-f53.google.com (mail-vs1-f53.google.com [209.85.217.53]) by mx.groups.io
 with SMTP id smtpd.web11.19904.1605838168061706214 for <yocto@lists.yoctoproject.org>; Thu, 19 Nov 2020 18:09:28 -0800
X-Received: by mail-vs1-f53.google.com with SMTP id f7so4201723vsh.10        for <yocto@lists.yoctoproject.org>; Thu, 19 Nov 2020 18:09:27 -0800 (PST)
X-Gm-Message-State: MDKBu4YDNUgurtX0emjAUIfNx3618059AA=
X-Google-Smtp-Source: ABdhPJxsNYo9/hS1D5JtnLxcwZHIaWOQ9KAcRWIq1Eyp69dCxWWIS5ptwSpoNS740UZHqnqRGXU5IgZbn7vKQVhLLTc=
X-Received: by 2002:a05:6102:22ef:: with SMTP id b15mr11835091vsh.35.1605838166777; Thu, 19 Nov 2020 18:09:26 -0800 (PST)
MIME-Version: 1.0
From: "Fundu Bits" <fundubits@gmail.com>
Date: Thu, 19 Nov 2020 20:09:15 -0600
X-OldMsgId: <CAOTXhGO1-ub1W1ZYas9+Si04xk+A5r8bEH=SOszaY+OdrNUWWw@mail.gmail.com>
Subject: [yocto] Fix future timestamps
To: yocto@lists.yoctoproject.org
Precedence: Bulk
List-Unsubscribe: <https://lists.yoctoproject.org/g/yocto/unsub>
Sender: <yocto@lists.yoctoproject.org>
List-Id: <yocto.lists.yoctoproject.org>
Mailing-List: list yocto@lists.yoctoproject.org; contact yocto+owner@lists.yoctoproject.org
List-Post: <mailto:yocto@lists.yoctoproject.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lists.yoctoproject.org; q=dns/txt; s=20140610;
 t=1605839769; bh=G/KjVbtNM6biAZTWVXf4zaVrNJmJ25+xNcNSRFeKJfs=; h=Content-Type:Date:From:Subject:To;
 b=AxgbQPTDEqBvmDMU1U3Jn+qU1alriZp0DRlUnoMS3Y2Da1IKq0MyfQhywNDUqKlNN/F xKaMX5IhrPD8Z9DKza29ptOkzNhKJpMLLFW+GzAEVyXqOfCocMCpRJGHyQJnjKoLWsRa3 cygbQboe+a+0Q9XprjqBTwVzmNK9SMeSbEA=
Return-Path: bounce+53643+51490+3618059+6691491@lists.yoctoproject.org
X-GFI-SMTP-Submission: 1
X-GFI-SMTP-HelloDomain: web01.groups.io
X-GFI-SMTP-RemoteIP: 66.175.222.12
Received-SPF: Pass (Exchange.sewerin.de: domain of yocto@lists.yoctoproject.org designates 66.175.222.12
 as permitted sender) receiver=Exchange.sewerin.de; client-ip=66.175.222.12; helo=web01.groups.io;
Message-ID: <8dd5f82100ad4d98b9d3c0ece5d905d9@Exchange.sewerin.de>
Content-Type: multipart/mixed; boundary="K3MWZdzFhIzobxbkAqY9"

--K3MWZdzFhIzobxbkAqY9
Content-Type: multipart/alternative; boundary="0000000000007f617705b48055ae"

--0000000000007f617705b48055ae
Content-Type: text/plain; charset="UTF-8"
X-EC0D2A8E-5CB7-4969-9C36-46D859D137BE-PartID: {CDB340E8-637F-42D6-9703-8CA1C3B78307}

Hi,
   I see future timestamps on binaries in the boot partition created by my
custom wks.
   It was ok, until I had to use upstream Grub (at 2.05) with the commit
20def1a3c39529  "fat: Support file modification times"

I have to write an extra script to touch binaries at the end of image
creation, is there any flag/option for local.conf to force valid timestamps
on binaries?

Thanks.




--0000000000007f617705b48055ae
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-EC0D2A8E-5CB7-4969-9C36-46D859D137BE-PartID: {DBE9D3C9-D2A4-4033-9A03-DB8DBC980F98}

<div>Hi,<div>=C2=A0 =C2=A0I see future timestamps on binaries in the boot pa=
rtition created by my custom=C2=A0wks.</div><div>=C2=A0 =C2=A0It was ok, unt=
il I had to use upstream Grub (at 2.05) with the commit</div><div>20def1a3c3=
9529=C2=A0 &quot;fat: Support file modification times&quot;</div><div><br></=
div><div>I have to write an extra script to touch binaries at the end of ima=
ge creation, is there any flag/option for local.conf to force valid timestam=
ps on binaries?</div><div><br></div><div>Thanks.</div></div>

--0000000000007f617705b48055ae--

--K3MWZdzFhIzobxbkAqY9--
