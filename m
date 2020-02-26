Received: from mail-vk1-f173.google.com (mail-vk1-f173.google.com [209.85.221.173])
 by mx.groups.io with SMTP id smtpd.web09.6865.1582718419705431466
 for <yocto@lists.yoctoproject.org>;
 Wed, 26 Feb 2020 04:00:19 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=qQUTZjk1;
 spf=pass (domain: gmail.com, ip: 209.85.221.173, mailfrom: memarnejadm74@gmail.com)
Received: by mail-vk1-f173.google.com with SMTP id g7so699663vkl.12
        for <yocto@lists.yoctoproject.org>; Wed, 26 Feb 2020 04:00:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=9NNBjl1/p7EbieZispigcrCcju9DlaposICNqmFXwEY=;
        b=qQUTZjk16URprO43bA/yNMmGjamuVTDxKELjNlB0/QzNLGxKt98vtLJ3lQP5mdFh3E
         Xq2WItrhRe9XHybjR7LL5UsFu5rjqGUbRd/8q6v3EXAYThwrVzXNuFsPLD2BGMVsG1kw
         vlRyZ/q6QFcCUARg9HWyKHxajPcm0zS+WHVomLN1bXpcXUdz5JVyvFaHhVhfMNTy2G+s
         rNRjNzOSrdRj+V2WvZdJyhbqE6aHRHOWgh28tIZ340j+SNpZzHdnRq0WdfolXpmFKWZe
         L9zrYHOcRKIa+Ex9gufxpXhUyrGGPgGTYzMsx/bHWNbIfE3WM5o/4z5xcJQmMiDoAbvn
         +phA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=9NNBjl1/p7EbieZispigcrCcju9DlaposICNqmFXwEY=;
        b=WPmb7tm1kqshLL33fZa62JjAlhVATr++tfGsTJDhVuA+lPm0mbTINWjxOEs6MGefH9
         mF8ROB8SIoHS//MzXFtiZcbmZPqHINHDesdEoGW6jifJYGMMWj1x1miwJCRABbj2Smi1
         rznEaLrA6xB9SPr+AWh3MRD8yyvgcVYP2Q7LGn+F8W08USBK9CGb7GtXPWM/zhQN0b24
         /V+SHcxV9s5dI391wztokzEmNozP0Z6TQIGLXrvuPEt/yC3Utd1v8m/1NRUkeDemUKNd
         NkiJ6V8SH5hLUuarGjPclEFo8T242mwZ6/cHVAYinxx04ZaFdrA21e3i0ZTHDkidn8FP
         S8QA==
X-Gm-Message-State: APjAAAUfU9IbhGZX2OyZYrEffhmhOiEQTKvERKuomqNg6RLwvl3yOZQq
	GHrnZ4jfwCwa7QNhTUisiPKmWJeOQm8vYTw8wvErDupCYIC3BblT
X-Google-Smtp-Source: APXvYqy9aBl27fdmJMsieMVunFckKXl3j7p+jwef331YV98rs3c9mhjg4QOYL+8X8A3Gl6vrh3NY7QCrY9Kyo665Dog=
X-Received: by 2002:a1f:a452:: with SMTP id n79mr929766vke.36.1582718418483;
 Wed, 26 Feb 2020 04:00:18 -0800 (PST)
MIME-Version: 1.0
From: "Mehran Memarnejad" <memarnejadm74@gmail.com>
Date: Wed, 26 Feb 2020 15:30:07 +0330
Message-ID: <CAER1B8K5Y9CFjJny8Z-ip+o1=5a3qfUTiFoHBL6zZTx0_sGeUQ@mail.gmail.com>
Subject: Yocto Top Level Files
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000001cff53059f795901"

--0000000000001cff53059f795901
Content-Type: text/plain; charset="UTF-8"

Hi,

Working with Yocto Project, Now I am a little confused about which files
are the top level ones i.e. files that bitbake starts by, and then all
other recipes are used *if and only if* they are included by some means
such as DEPENDS, RDEPENDS, IMAGE_INSTALL and so on...

As I understood:

   - *meta*/recipes*/images/myImage.bb* which is "*hardware independent*"
   and includes packages to install and etc
   - *conf/machine/myMachine.conf* which is "*hardware specific*" and
   includes appropriate Bootloader, kernel, device tree and etc ... i.e.
   selecting appropriate bootloader, kernel recipes among all others by
   PREFERRED_PROVIDER mechanism
   - *conf/distro/myDistro.conf* which I don't know its usage

Then by setting MACHINE and DISTRO variables in *conf/local.conf* and
calling bitbake with *$ bitbake myImage*, finally *conf/local.conf* is read
and "*myMahcine.conf and myDistro.conf*" will be selected to be used for
image creation, and the myImage recipe's tasks will be executed by
bitbake... all other recipes, include file and bbclass files are come into
play *if and only if* they have been used by some means such as *IMAGE_INSATLL,
DEPENDS, RDEPENDS, inc, inherit and so on* in myImage.bb, myMahchine.conf
and myDistro.conf

Question: Is this procedure Right??

Question: So in summary, I guess that top level files are: *myImage.bb*,
*myMahchine.conf* and *myDistro.conf*

NOTE: Some other files such as conf/bblayer.conf, bitbake.conf and etc are
read but those are not in my focus for this question

Thanks in advance

--0000000000001cff53059f795901
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><p>Hi,<br></p><p>Working with Yocto Proje=
ct, Now I am a=20
little confused about which files are the top level ones i.e. files that
 bitbake starts by, and=20
then all other recipes are used <strong>if and only if</strong> they are in=
cluded by some means such as DEPENDS, RDEPENDS, IMAGE_INSTALL and so on... =
<br></p>

<p>As I understood: <br></p>

<ul><li><strong>meta*/recipes*/images/myImage.bb</strong> which is &quot;<e=
m>hardware independent</em>&quot; and includes packages to install and etc<=
/li><li><strong>conf/machine/myMachine.conf</strong> which is &quot;<em>har=
dware specific</em>&quot;
 and includes appropriate Bootloader, kernel, device tree and etc ...=20
i.e. selecting appropriate bootloader, kernel recipes among all others=20
by PREFERRED_PROVIDER mechanism</li><li><strong>conf/distro/myDistro.conf</=
strong> which I don&#39;t know its usage</li></ul>

<p>Then by setting MACHINE and DISTRO variables in <em>conf/local.conf</em>=
 and calling bitbake with <strong>$ bitbake myImage</strong>, finally <em>c=
onf/local.conf</em> is read and &quot;<em>myMahcine.conf and myDistro.conf<=
/em>&quot;
 will be selected to be used for image creation, and the myImage=20
recipe&#39;s tasks will be executed by bitbake... all other recipes, includ=
e
 file and bbclass files are come into play <strong>if and only if</strong> =
they have been used by some means such as <strong>IMAGE_INSATLL, DEPENDS, R=
DEPENDS, inc, inherit and so on</strong> in myImage.bb, myMahchine.conf and=
 myDistro.conf</p><p>Question: Is this procedure Right?? </p><p>Question: S=
o in summary, I guess that top level files are: <i><b>myImage.bb</b></i>, <=
b><i>myMahchine.conf</i></b> and <i><b>myDistro.conf</b></i></p>



<p>NOTE: Some other files such as conf/bblayer.conf, bitbake.conf and etc a=
re read but those are not in my focus for this question</p><p>Thanks in adv=
ance<br></p></div></div>

--0000000000001cff53059f795901--
