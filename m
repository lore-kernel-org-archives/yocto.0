Return-Path: <antonius.riko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AB9ECE00B47; Tue, 13 Jun 2017 21:04:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (antonius.riko[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f52.google.com (mail-pg0-f52.google.com [74.125.83.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 660B8E009A5
	for <yocto@yoctoproject.org>; Tue, 13 Jun 2017 21:04:49 -0700 (PDT)
Received: by mail-pg0-f52.google.com with SMTP id f185so69583169pgc.0
	for <yocto@yoctoproject.org>; Tue, 13 Jun 2017 21:04:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=to:references:subject:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language;
	bh=+XbYhiG9YAbtBpkARoqwhbXTR9L45N28uGmE1JY1uTY=;
	b=aLA/VRpmo+OLgwR3JmlLKHU5koEjTIusZihCb0nv7x1dCFwivIP4SndMQ85Rx4Gb2Q
	/06V7dIlecpFTusCPVMX68Q2+f6ET6qmH+LQe739cb3ofPK3EoYNobAh9eChZPRe2Jal
	67s56vEBGJz4DfG+0TJlHU0gC7XhrQi81uegQKPdWxiB5/Q1FV6V0iO333sK79RrlvVh
	bld0zhd+o9RG51cDUNNoAYgX0dPOAAbFBHKmzbStSpttWlhXJm+UuWoPsYjnAxdiZReZ
	OsISHU6Fl7xhPogTU+3p7USjpgiSsitXGS0Rptf3z6ZwtJvDgdd4coG+cMYv9xu9hjVo
	WBLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:references:subject:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=+XbYhiG9YAbtBpkARoqwhbXTR9L45N28uGmE1JY1uTY=;
	b=K/25DbK5z08c8f47kvsuyloCI/S4HwerND3wqrPZFnJCHQr8ZZw857hrL0Q9Qxta4y
	3xRG9na+U34zYkaskzZlfa3A+QLNkXHNTcFaN+8zYaUh3X2td0xKY8Cs+CwMTMprAeNj
	QKnRTDxD9aGD8CINAWO/+A1q/RZ5zkwixrMUrpz/e2l3lYfpdg8EyN5FimcfYX155eYD
	dcctrx9dba2Ly76NrdjvowuEKeerIMbG8xddFL0MMc9LomYNxVqT6uh5rvj3WGNEZwRk
	6e0kEnhvVGHnMJ/kMJpjRX0kmWJ+68O/2TFMJnFLdJrqh9Vwtxy1sDv0613lyflvpmoV
	z+AQ==
X-Gm-Message-State: AKS2vOwWDygOTSJCnvynWZDp3bjHCfiErQDYRG/VBIdElzh/d9M8AOdK
	ryG78Zjy+UdL3PkY
X-Received: by 10.101.91.7 with SMTP id y7mr2422070pgq.226.1497413088377;
	Tue, 13 Jun 2017 21:04:48 -0700 (PDT)
Received: from [10.0.0.2] (CPE-124-178-9-113.lns1.pie.bigpond.net.au.
	[124.178.9.113]) by smtp.gmail.com with ESMTPSA id
	a84sm3646171pfe.19.2017.06.13.21.04.46 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 13 Jun 2017 21:04:47 -0700 (PDT)
To: yocto@yoctoproject.org
References: <CAJTo0LbtvKV3V5sKTbZ5j9GDu5xFfLgVicd6o74aW2NT0OArKw@mail.gmail.com>
From: Riko Ho <antonius.riko@gmail.com>
Message-ID: <00c09c00-5d24-7dc4-da27-2d2e67884454@gmail.com>
Date: Wed, 14 Jun 2017 12:04:44 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
In-Reply-To: <CAJTo0LbtvKV3V5sKTbZ5j9GDu5xFfLgVicd6o74aW2NT0OArKw@mail.gmail.com>
X-Mailman-Approved-At: Thu, 15 Jun 2017 14:35:35 -0700
Subject: Meta-web-kiosk Layer
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
X-List-Received-Date: Wed, 14 Jun 2017 04:04:53 -0000
Content-Type: multipart/alternative;
	boundary="------------E6DF321D5BEBEF72572A4873"
Content-Language: en-US

--------------E6DF321D5BEBEF72572A4873
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hello Everyone,

I tried doing bitbake core-image-web-kiosk and got some errors, does 
anyone know how to fix it ? thanks,

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

-- 
*

/*******/
Sent by Ubuntu LTS 16.04,
谢谢,
Regards,
Riko Ho
/*******/

*

--------------E6DF321D5BEBEF72572A4873
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Hello Everyone, <br>
    </p>
    <p>I tried doing bitbake core-image-web-kiosk and got some errors,
      does anyone know how to fix it ? thanks,</p>
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
      <br>
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

--------------E6DF321D5BEBEF72572A4873--
