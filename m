Return-Path: <antonius.riko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1A83FE00B53; Tue, 13 Jun 2017 21:10:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (antonius.riko[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.174 listed in list.dnswl.org]
Received: from mail-pf0-f174.google.com (mail-pf0-f174.google.com
	[209.85.192.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CD6F7E00B18
	for <yocto@yoctoproject.org>; Tue, 13 Jun 2017 21:10:10 -0700 (PDT)
Received: by mail-pf0-f174.google.com with SMTP id l89so77615923pfi.2
	for <yocto@yoctoproject.org>; Tue, 13 Jun 2017 21:10:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-language;
	bh=43f9fLQJw1ByM6BUOAARJnipMY5PXaQRo9VOdkcU9x0=;
	b=cmhNa3E5kC+nWjYRTOzXYf2P6lHcWcVkpqD6CyV62ND6dm7moWDo0ulrxJjxfaZBAH
	VA+v3YDyTVXSLrhdfhH4NZ9zwF794ZTiwui/m8+MGNMs7Ujg0yf29nLzl5QHxzMJl+Fm
	k+JmDyAsG7YcuYMzhMVF3exrKWWoLVSpu+mpl7/UJ8jQRsk2o51bTLrieJ9jHQcFoQWv
	KyrjAzkRBDh1AroAIBfYEHn/KNZqOHFlqlMnrm9yp7rW/eoHto5bZHhmjiu6178C4Ly3
	YA5s4QThtvT2KW2EwlJxSVZcWKAMcgaigFhqg5+1isZv+QExU1DMQINiDqV2LJPf8dcT
	hkbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-language;
	bh=43f9fLQJw1ByM6BUOAARJnipMY5PXaQRo9VOdkcU9x0=;
	b=lyvk7VJHnMWCg5EsLQW9s1O34VKzfKA5BeufCq9zjmhHHUSAT78pMq0qwcvI8ilOdx
	q0AjgWS8LBIQTyeNQO5xdoibLtD87kD4CPkAhX4zhzqzx9h9sYAdp/cTr8ia2VNvNkGK
	LttSd8q1pEhF+rEFXtc0NgtWLe6PJXcMUOBFllDOWM+ZY5FUqxLLHQUo+Gv8nUx+nrFu
	ozWh7s1JvZHKfh5qejQJ6W5EBBXLP0ECN8ru9mPhtzZhiUvXvXjKWIFOTr3bhNInpvDs
	CpgdM9YXzKPadFEjihhE94K3NBMQ0lq6C9iGoWSPI1mZZ8G/0opJR2aEEiJuNqTan0IJ
	OHig==
X-Gm-Message-State: AKS2vOwdbRuauA9yis1YRsO5qqmgtsKQycVa87MVZR5S9asfRAHMqYbo
	tgWTlc5j56ttN+tv
X-Received: by 10.84.133.226 with SMTP id f89mr2901736plf.55.1497413409490;
	Tue, 13 Jun 2017 21:10:09 -0700 (PDT)
Received: from [10.0.0.2] (CPE-124-178-9-113.lns1.pie.bigpond.net.au.
	[124.178.9.113]) by smtp.gmail.com with ESMTPSA id
	r85sm21512778pfd.100.2017.06.13.21.10.07 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 13 Jun 2017 21:10:08 -0700 (PDT)
To: yocto@yoctoproject.org
From: Riko Ho <antonius.riko@gmail.com>
Message-ID: <ed57e154-cbd7-176a-02fb-496c6f730d2a@gmail.com>
Date: Wed, 14 Jun 2017 12:10:05 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
Subject: bitbake core-image-web-kiosk question ?
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
X-List-Received-Date: Wed, 14 Jun 2017 04:10:14 -0000
Content-Type: multipart/alternative;
	boundary="------------11D335DF5D265EB35C7B9EC4"
Content-Language: en-US

--------------11D335DF5D265EB35C7B9EC4
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hello Everyone,

I tried doing "bitbake core-image-web-kiosk"

And I got this :

====================

Loading cache: 100% 
|#####################################################################################################################################| 
Time: 0:00:00
Loaded 1310 entries from dependency cache.
ERROR: ExpansionError during parsing 
/home/bianchi77/poky/meta-web-kiosk/recipes-browser/vala/vala_0.16.0.bb 
| ETA:  --:--:--
Traceback (most recent call last):
   File "/home/bianchi77/poky/bitbake/lib/bb/data_smart.py", line 412, 
in 
DataSmart.expandWithRefs(s='http://ftp.gnome.org/pub/GNOME/sources/${BPN}/${SHRT_VER}/${BP}.tar.xz 
http://ftp.gnome.org/pub/GNOME/sources/vala/0.36/vala-0.36.0.tar.xz', 
varname='SRC_URI'):
                  try:
     >                s = __expand_var_regexp__.sub(varparse.var_sub, s)
                      try:
   File "/home/bianchi77/poky/bitbake/lib/bb/data_smart.py", line 111, 
in VariableParse.var_sub(match=<_sre.SRE_Match object; span=(46, 57), 
match='${SHRT_VER}'>):
                  else:
     >                var = self.d.getVarFlag(key, "_content")
                  self.references.add(key)
   File "/home/bianchi77/poky/bitbake/lib/bb/data_smart.py", line 794, 
in DataSmart.getVarFlag(var='SHRT_VER', flag='_content', expand=True, 
noweakdefault=False, parsing=False):
                      cachename = var + "[" + flag + "]"
     >            value = self.expand(value, cachename)

   File "/home/bianchi77/poky/bitbake/lib/bb/data_smart.py", line 436, 
in 
DataSmart.expand(s="${@bb.data.getVar('PV',d,1).split('.')[0]}.${@bb.data.getVar('PV',d,1).split('.')[1]}", 
varname='SHRT_VER'):
          def expand(self, s, varname = None):
     >        return self.expandWithRefs(s, varname).value

   File "/home/bianchi77/poky/bitbake/lib/bb/data_smart.py", line 426, 
in 
DataSmart.expandWithRefs(s="${@bb.data.getVar('PV',d,1).split('.')[0]}.${@bb.data.getVar('PV',d,1).split('.')[1]}", 
varname='SHRT_VER'):
                  except Exception as exc:
     >                raise ExpansionError(varname, s, exc) from exc

bb.data_smart.ExpansionError: Failure expanding variable SHRT_VER, 
expression was 
${@bb.data.getVar('PV',d,1).split('.')[0]}.${@bb.data.getVar('PV',d,1).split('.')[1]} 
which triggered exception AttributeError: module 'bb.data' has no 
attribute 'getVar'


Summary: There was 1 ERROR message shown, returning a non-zero exit code.

===============

Does anyone know how to fix it ?

I used poky with pyro release,

Thanks

-- 
*

/*******/
Sent by Ubuntu LTS 16.04,
谢谢,
Regards,
Riko Ho
/*******/

*

--------------11D335DF5D265EB35C7B9EC4
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Hello Everyone,</p>
    <p>I tried doing "bitbake core-image-web-kiosk"</p>
    <p>And I got this :</p>
    <p>====================</p>
    <p>Loading cache: 100%
|#####################################################################################################################################|
      Time: 0:00:00<br>
      Loaded 1310 entries from dependency cache.<br>
      ERROR: ExpansionError during parsing
/home/bianchi77/poky/meta-web-kiosk/recipes-browser/vala/vala_0.16.0.bb                                            
      | ETA:  --:--:--<br>
      Traceback (most recent call last):<br>
        File "/home/bianchi77/poky/bitbake/lib/bb/data_smart.py", line
      412, in
DataSmart.expandWithRefs(s='<a class="moz-txt-link-freetext" href="http://ftp.gnome.org/pub/GNOME/sources/$">http://ftp.gnome.org/pub/GNOME/sources/$</a>{BPN}/${SHRT_VER}/${BP}.tar.xz 
<a class="moz-txt-link-freetext" href="http://ftp.gnome.org/pub/GNOME/sources/vala/0.36/vala-0.36.0.tar.xz">http://ftp.gnome.org/pub/GNOME/sources/vala/0.36/vala-0.36.0.tar.xz</a>',
      varname='SRC_URI'):<br>
                       try:<br>
          &gt;                s =
      __expand_var_regexp__.sub(varparse.var_sub, s)<br>
                           try:<br>
        File "/home/bianchi77/poky/bitbake/lib/bb/data_smart.py", line
      111, in VariableParse.var_sub(match=&lt;_sre.SRE_Match object;
      span=(46, 57), match='${SHRT_VER}'&gt;):<br>
                       else:<br>
          &gt;                var = self.d.getVarFlag(key, "_content")<br>
                       self.references.add(key)<br>
        File "/home/bianchi77/poky/bitbake/lib/bb/data_smart.py", line
      794, in DataSmart.getVarFlag(var='SHRT_VER', flag='_content',
      expand=True, noweakdefault=False, parsing=False):<br>
                           cachename = var + "[" + flag + "]"<br>
          &gt;            value = self.expand(value, cachename)<br>
           <br>
        File "/home/bianchi77/poky/bitbake/lib/bb/data_smart.py", line
      436, in
DataSmart.expand(s=<a class="moz-txt-link-rfc2396E" href="mailto:${@bb.data.getVar('PV',d,1).split('.')[0]}.${@bb.data.getVar('PV',d,1).split('.')[1]}">"${@bb.data.getVar('PV',d,1).split('.')[0]}.${@bb.data.getVar('PV',d,1).split('.')[1]}"</a>,
      varname='SHRT_VER'):<br>
               def expand(self, s, varname = None):<br>
          &gt;        return self.expandWithRefs(s, varname).value<br>
           <br>
        File "/home/bianchi77/poky/bitbake/lib/bb/data_smart.py", line
      426, in
DataSmart.expandWithRefs(s=<a class="moz-txt-link-rfc2396E" href="mailto:${@bb.data.getVar('PV',d,1).split('.')[0]}.${@bb.data.getVar('PV',d,1).split('.')[1]}">"${@bb.data.getVar('PV',d,1).split('.')[0]}.${@bb.data.getVar('PV',d,1).split('.')[1]}"</a>,
      varname='SHRT_VER'):<br>
                       except Exception as exc:<br>
          &gt;                raise ExpansionError(varname, s, exc) from
      exc<br>
           <br>
      bb.data_smart.ExpansionError: Failure expanding variable SHRT_VER,
      expression was
${@bb.data.getVar('PV',d,1).split('.')[0]}.${@bb.data.getVar('PV',d,1).split('.')[1]}
      which triggered exception AttributeError: module 'bb.data' has no
      attribute 'getVar'<br>
      <br>
      <br>
      Summary: There was 1 ERROR message shown, returning a non-zero
      exit code.<br>
    </p>
    <p>===============</p>
    <p>Does anyone know how to fix it ?</p>
    <p>I used poky with pyro release, <br>
    </p>
    <p>Thanks<br>
    </p>
    <div class="moz-signature">-- <br>
      <b>
        <p style="color:blue;"> /*******/<br>
          Sent by Ubuntu LTS 16.04,<br>
          谢谢,<br>
          Regards,<br>
          Riko Ho<br>
          /*******/<br>
        </p>
      </b></div>
  </body>
</html>

--------------11D335DF5D265EB35C7B9EC4--
