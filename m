Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com [209.85.219.53])
 by mx.groups.io with SMTP id smtpd.web10.12257.1589897152364503901
 for <yocto@lists.yoctoproject.org>;
 Tue, 19 May 2020 07:05:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=NcNF0RLI;
 spf=pass (domain: gmail.com, ip: 209.85.219.53, mailfrom: lefevre.da@gmail.com)
Received: by mail-qv1-f53.google.com with SMTP id dh1so2642875qvb.13
        for <yocto@lists.yoctoproject.org>; Tue, 19 May 2020 07:05:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=sO3RrsEXkHL6CfVHmJaRTzP3Iu6Bme5m44+rC0UGDxU=;
        b=NcNF0RLI+e2iHSkVCsiOG7Mb4PUrbpGsJIveAFHi4qokJTuxJk/4k3ueYvXvKV8hJg
         6Vm2L9xwXZuxZ7HFYbcmrekc7tcyw6f7MQX5eTSCMgb8UeDqq8FuF1LB9kNi8wTwNHxd
         fbdIZVllTMS/ri85Z0o9yctHqYHuD36ByB27ao9NQNbwmUZ3SB6ZlWXid1IilrjidcM2
         elF3YlLFG9UxnMyxC4UU4AbyFttt5rE8CnCIfJZJXZxDsmNOLPb64QE0jW5qBCu96285
         LemlTjBVDUrig1klJxkJBUZ00AhWUfW3NN9qzRZYlE3tBCGBohmx62qcPWgq6zSAQtsa
         29cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=sO3RrsEXkHL6CfVHmJaRTzP3Iu6Bme5m44+rC0UGDxU=;
        b=n4+8Ku9+VmLZRpSN/6iBVh02K11C91qvmVTY+XlB+oy6WpANoQxs34pf+t24TcIC7v
         CjNCZKrLxySY7RWeE3m6cPLdgaMnq4TPqvnqFVe3kMZXDiI0wew4eqvxni+U+os0syWX
         SWJfhkIqcszNh+gyPwxXnkWWPN5NEMsN7EFIpx6MQv3s2rnIBPMvBwjkSeMCpgPWbBdA
         pkH7hd82vv0N89sxkrPhpj6ybcMLGd2nry/Zu6sdBRIFOaj7Nxv5CJYIjnQPaWpPR7fH
         tcSwDZ0OBMM84Do5oGtviC6JrNkuCnkPQHHTdoIsd7extMAfOjzrnvN4/RDkFycmfX/H
         WKZg==
X-Gm-Message-State: AOAM531Y6IyaiAXPnkj0q8eINdDRRaiRvtwxdMPR3UAeXGwnfx8O0u2/
	lg99i5bkFwGB/UuoCKiAqz8iBS65WjZOruBx1oh1HTs=
X-Google-Smtp-Source: ABdhPJzNQl9a1SqeX6/+c67M/MJQF/Jr5mcO2TorifAQdSVf0Lixls0HKGtJftT25VH1HSv3v16++cJAJ9nG3KlqPRU=
X-Received: by 2002:ad4:5662:: with SMTP id bm2mr11361539qvb.48.1589897151348;
 Tue, 19 May 2020 07:05:51 -0700 (PDT)
MIME-Version: 1.0
From: "Damien LEFEVRE" <lefevre.da@gmail.com>
Date: Tue, 19 May 2020 17:05:40 +0300
Message-ID: <CA+FhBv_iyW6hhU6u4BrHoS5bNDcH2vDurWOJsPrPFNWodc5dDQ@mail.gmail.com>
Subject: deploy GPG keys into images
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000ef869905a600c6c0"

--000000000000ef869905a600c6c0
Content-Type: text/plain; charset="UTF-8"

Hi,

I've put GnuPG in my image, and I'd like to deploy a set to public and
private keys into the system images.

How can I do that from recipes?

Thanks,
-Damien

--000000000000ef869905a600c6c0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I&#39;ve put GnuPG in my=C2=A0image=
, and I&#39;d like to deploy a set to public and private keys into the syst=
em images.</div><div><br></div><div>How can I do that from recipes?</div><d=
iv><br></div><div>Thanks,</div><div>-Damien</div></div>

--000000000000ef869905a600c6c0--
