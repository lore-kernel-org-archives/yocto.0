Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
 by mx.groups.io with SMTP id smtpd.web11.43697.1609148690964156078
 for <yocto@lists.yoctoproject.org>;
 Mon, 28 Dec 2020 01:44:51 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=e/3G0TXN;
 spf=pass (domain: gmail.com, ip: 209.85.167.48, mailfrom: raghu.icecraft@gmail.com)
Received: by mail-lf1-f48.google.com with SMTP id 23so22588474lfg.10
        for <yocto@lists.yoctoproject.org>; Mon, 28 Dec 2020 01:44:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=6SjWmxZf0QPd7CKKlZo+PiYkJ59o4t6BGHiYPzYcc5o=;
        b=e/3G0TXNEtISVmzqyg8n6YBcFHWri9D3dKqPB9uMiKAiqE5mxsm0R+Z+xa+oiO/WZS
         hEGYDMUqpnZfOxR+OpYZrZQikX2g75jWNuxNZ/PXZL5wTp/ANIbkg2lM/Vq6ExJF0/WH
         k9seIeYuLB9upyLrRQegm2XW2M1kq7rQS4Uc8/4SZYulxm26QuOfBOosgdtLlF24XdyD
         JR5dc4oszMkLs7LJytVRQB/yTuzPh4E+qwoIhjzVvyrZ6DdN0JQ/m2ejIT+VHc5VNKJM
         lKaBxxq1+FI5MKVHPaaizTKUvyUDnszYI3lFrzM1xieD4ry9WEuqt7OfG/DJzNT/I5Vp
         4ESA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=6SjWmxZf0QPd7CKKlZo+PiYkJ59o4t6BGHiYPzYcc5o=;
        b=s9b83uhP85QJv9hzPcrL//xHyzjTBlHOVTmca2swBdHvwru+qikYMREc7z3Ct0Gxko
         CQcEezW2TmsfGxC8qx6J++RoWxdmKdr+HH9aG1R6hd3kDjyXQLmrI9LJ+E/1EYjuUfm5
         J9oxtl138Su/biKn6RvXWDAEfuq+SGyJSonFh8dzzJttLCByO6QdFdbmrLpKtfDuaDjm
         Ws1bXfRjNznS1KN5u4gzT03FfSstamsWZ0JcLdjd+Z+S0n9tqIXf0hdGUGQOBqAhQVot
         RYGf9rZ3cGvOtcOXE2xvaqWRtCaHAKmxYMjLJg58S+kMVOgMYhSm6taPCLjDxN15augU
         julA==
X-Gm-Message-State: AOAM530EK7nU5JM8dfIw6iK1or5/DoC7M2EmI4fl5O/KQVS1S/4mfJ7d
	JS6I9yNJkyFkhVA+hZRvHPzSAw7f/wsEerz/k5JyKQi1MiFC8cWN
X-Google-Smtp-Source: ABdhPJxTRfWIZvmZ1lh9e+Asa7ZlkR/JSexdb7GwzPhit19/uFFLuFHENsMnEMkiv9aSDigumFYND13cRBTHHiYD46U=
X-Received: by 2002:a05:6512:34d3:: with SMTP id w19mr17188462lfr.418.1609148688882;
 Mon, 28 Dec 2020 01:44:48 -0800 (PST)
MIME-Version: 1.0
From: "Raghu Icecraft Software Trainings" <raghu.icecraft@gmail.com>
Date: Mon, 28 Dec 2020 15:14:37 +0530
Message-ID: <CAKRDAG9vG0AsckYe2hJL9DW_FF6G_+71wLA5+hWG38xh7UjQUg@mail.gmail.com>
Subject: chpasswd not working in yocto-2019
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000fddeb305b7831f67"

--000000000000fddeb305b7831f67
Content-Type: text/plain; charset="UTF-8"

Hello,
I have upgraded my kernel poky to 2019.1 version, here i am unable to find
chpasswd utility because of which i am unable to set password to my
root-user.
Can you please let me know if the chpasswd utility has been changed or
modified please.

--000000000000fddeb305b7831f67
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div>I have upgraded my kernel poky to 2019.1 versio=
n, here i am unable to find chpasswd utility because of which i am unable t=
o set password to my root-user.</div><div>Can you please let me know if the=
 chpasswd utility has been changed or modified please.</div></div>

--000000000000fddeb305b7831f67--
