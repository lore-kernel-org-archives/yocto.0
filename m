Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
 by mx.groups.io with SMTP id smtpd.web12.13335.1575909061213182609
 for <yocto@lists.yoctoproject.org>;
 Mon, 09 Dec 2019 08:31:01 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=p30q5MfA;
 spf=pass (domain: gmail.com, ip: 209.85.222.182, mailfrom: wpdster@gmail.com)
Received: by mail-qk1-f182.google.com with SMTP id c17so3629616qkg.7
        for <yocto@lists.yoctoproject.org>; Mon, 09 Dec 2019 08:31:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=RPkqTc/YFJPtvt5ro6TcvAMD+ux2/E53idZhOmBWCo0=;
        b=p30q5MfAZp5nwdX110dULsSORYf9Np0CrDLQT+Ig+T70wtbJvCAmFCtUrfPWr+Sb7l
         zTFBt3m4RrgRm65qm1RhkAjHI6ZFb3m+j646tmKJvrJWjQ2O1QtqyYOgC4WhYKTsra5K
         tmDo/SkYUyfsj+jSg9IoNyu8WOjorwN4gVMCIzEZagfeTwAm3Jx7c17aVVDtiIUD5yoj
         Q0pUJE4I6tpNKjGEGqgU2Ycenia86Br9D19u3jrj5TlJL09gfYrj3vQEEETnbhqcjwGC
         F7zpQLB3m+C+BecwcMJNmkGsXR2cQ82Q3uCeUF/MpneygUn08N3J8ASh/jsLYlQ0TNzi
         Pb7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=RPkqTc/YFJPtvt5ro6TcvAMD+ux2/E53idZhOmBWCo0=;
        b=ahGkjd60vx8wTyT061rwB9bCUHHRE8zsg/gHckUY3+eR40Z/VKAwoUHnws4Ck4NxNA
         iBnE6lkAqTjBe0lL8q9tHN/dkbjjEyaVB+r9rek8ze3S+EFA6/NhI7TgUxfFM7PyM/zq
         qLZcvapsIyjexRtU9Xpg8BNxMwsFSyC19Ky53dQB2909ksE8Rujdhl78DtHuTiFudT40
         oLZ4nVRDC43JX2iRKnoo65KO98YslujrVd2f9SzKZQM4axoc89cunuXS8G0I5fx3z562
         kFKKfDXb5wJInAMBdJ0ElWnWZDU16QIZML0dZwZk7uKZqh1q+25XlFs19XJeatJQelxg
         wNRg==
X-Gm-Message-State: APjAAAU7C+K4qZs7I5/2Ihyl5DZVvkcFmssU+Mefxnlo8A5KKz4fccRf
	jpJcp0eX2Skngx6OB1Tpb4V6OTy1Ef1JlS0M2hwWWxqS
X-Google-Smtp-Source: APXvYqxdjDKvTFcGZjaJd36ux4Yte2XLFabOBrFDMpzRqEdJukEsK66I8Tu6oD+sALJzIPqRbWQMqu4iNDn3+Z1fKiU=
X-Received: by 2002:ae9:f711:: with SMTP id s17mr27763391qkg.238.1575909059731;
 Mon, 09 Dec 2019 08:30:59 -0800 (PST)
MIME-Version: 1.0
From: "Patrick Doyle" <wpdster@gmail.com>
Date: Mon, 9 Dec 2019 11:30:32 -0500
Message-ID: <CAF_dkJB25g1wT87bvbotOjQVLUBqiLJFoqcd9NunEH-Wu6aB6Q@mail.gmail.com>
Subject: Writing do_compile in python and importing modules
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

i was just reviewing a recipe I wrote a month or two ago and saw that I wrote:

do_compile() {
    python3 ${WORKDIR}/assemble-tsk-blob.py -o tsk-blob -d
${DEPLOY_DIR_IMAGE}/foo -t ${DEPLOY_DIR_IMAGE}/bar
}

and I thought to myself, why did I write assemble-tsk-blob.py (which
is a fairly trivial python 10 line script) instead of embedding it
inline in my bitbake recipe?

The answer is: because I could iterate on that 10 line script and test
it much more quickly as a standalone python script than I could if I
embedded it in a recipe.  (There are another 10-15 lines of argparse
and if __name__ == '__main__' stuff beyond the 10 lines of actual
code).

Since I'm in a cleaning-up mood, I started wondering if I could change
my do_compile() function to a python function and then embed the 10
lines in there.  Of course I can.

But then I started wondering if I could change do_compile to python,
have it import assemble-tsk-blob, and get the best of both worlds --
the ability to test assemble-tsk-blob outside of bitbake, and the
efficiency of including its core operation directly within
do_compile() and not requring that I spin up another python instance.

Aside... there is nothing python3-ish about this code, I am just in
the habit of unquestioningly using python3 for all new development.

Any thoughts?

--wpd
