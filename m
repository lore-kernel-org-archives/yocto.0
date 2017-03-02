Return-Path: <dominig.arfoll@fridu.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 016C2E00924; Thu,  2 Mar 2017 08:44:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, MIME_HTML_ONLY,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.7 MIME_HTML_ONLY BODY: Message only has text/html MIME parts
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f180.google.com (mail-wr0-f180.google.com
	[209.85.128.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CCF4FE0049D
	for <yocto@yoctoproject.org>; Thu,  2 Mar 2017 08:44:16 -0800 (PST)
Received: by mail-wr0-f180.google.com with SMTP id u108so56630820wrb.3
	for <yocto@yoctoproject.org>; Thu, 02 Mar 2017 08:44:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fridu.net; s=google;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=0BmiBAUwvLKrTxfcxzW/emhUG4M0W4hd0ykKiMOdLwo=;
	b=bMvDiW09W1pQWgmnVPW9v36dXotV5LayKtNsFMtprK/OPI0CTa+kJoi/cnWSVbkqCo
	OBbcxhGtEqJjNyIw6/MQ3ZaurDejR/AOrJfuekUPhXMJo1u3KQoRS2cvv/dJmFQNZ3Oa
	+asRNRlJKuhMD1d4d4OR2mD3ZVNm9+WS412aE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=0BmiBAUwvLKrTxfcxzW/emhUG4M0W4hd0ykKiMOdLwo=;
	b=aGWazgiMlk1Col3cltngM/u7V1nQHWqlcnXIdt1G3/k+FZAJDLLhYxc1doSeuLXU+S
	AT0+3HcvqBZAAZV4ytjVSAowDmICn9D1zS7CAoOakvgOJZtSRvS/4/7+FvFKR7fSlr+K
	apQb5/5yDPoYSXCzBOmkNAelXC/B0fpInlj4o/K0MLZvfGjENCH8k8wUzyrN4GRoHiQW
	q+0DCafxRRay35uw9COt13Fefw0eqk2hH7F2Oxw9qSBqIgf0iXz9VbKhFXwHfmGUoAzd
	d1xtAAgpy7VvEKphYTD8cwja1bYTn5SSDuhf4KTGesCV5N86FzdtMbxRm6hkkkVcn33i
	ZODg==
X-Gm-Message-State: AMke39k+xvL0wab//1mhXuic7mP7FywYJqIopPEc826uoXNQCeAMHpG5ePlG64t6H1IQ4g==
X-Received: by 10.223.151.45 with SMTP id r42mr12986170wrb.185.1488473055128; 
	Thu, 02 Mar 2017 08:44:15 -0800 (PST)
Received: from [10.10.61.21] (ARennes-650-1-68-26.w2-12.abo.wanadoo.fr.
	[2.12.195.26]) by smtp.gmail.com with ESMTPSA id
	s18sm27795781wmb.18.2017.03.02.08.44.13 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 02 Mar 2017 08:44:14 -0800 (PST)
To: yocto@yoctoproject.org
References: <CAF1M0z5E3uiNW5cfWWmbrmvLic6kgFnzZkwTig3ss-ktfmbu1g@mail.gmail.com>
From: "Dominig ar Foll (Intel Open Source)" <dominig.arfoll@fridu.net>
Message-ID: <64b5381d-95c8-40da-3bc6-9b86196d4ba4@fridu.net>
Date: Thu, 2 Mar 2017 17:44:13 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <CAF1M0z5E3uiNW5cfWWmbrmvLic6kgFnzZkwTig3ss-ktfmbu1g@mail.gmail.com>
Subject: Re: Error: bb.data_smart.ExpansionError: Failure expanding variable PV_MAJ, expression
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
X-List-Received-Date: Thu, 02 Mar 2017 16:44:20 -0000
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <font size="-1">Satya,<br>
      <br>
      Patrick Holy has given me the following info and it likely would
      solve your issue as well.<br>
      <br>
      Dominig<br>
      <br>
    </font>Le 02/03/2017 à 17:19, Patrick Ohly a écrit :<br>
    bb.data.getVar() has been deprecated for a while and was finally
    removed. Use d.getVar('PV') instead on master (no additional
    parameters
    needed, expansion is on by default).
    <div class="moz-txt-sig">-- Best Regards, Patrick Ohly<br>
      <br>
      ----------------------------------------------------------<br>
    </div>
    <br>
    <div class="moz-cite-prefix">Le 22/02/2017 à 07:45, SatyaNarayana
      Sampangi a écrit :<br>
    </div>
    <blockquote
cite="mid:CAF1M0z5E3uiNW5cfWWmbrmvLic6kgFnzZkwTig3ss-ktfmbu1g@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div>Hi,<br>
          <br>
        </div>
        1. I wrote the recipe .bb to install the nano editor, the
        contents given below,<br>
        <br>
        <br>
        <div> 1 SUMMARY = "GNU nano- editor"<br>
            2 DESCRIPTION = "GNU nano - an enhanced clone for the pico
          editor"<br>
            3 <br>
            4 HOMEPAGE = "<a moz-do-not-send="true"
            href="https://www.nano-editor.org/">https://www.nano-editor.org/</a>"<br>
            5 BUGTRACKER = "<a moz-do-not-send="true"
            href="https://savannah.gnu.org/bugs/?group=nano">https://savannah.gnu.org/bugs/?group=nano</a>"<br>
            6 <br>
            7 SECTION = "console/utils"<br>
            8 PRIORITY = "OPTION"<br>
            9 <br>
           10 LICENSE = "GPLv3"<br>
           11 LIC_FILES_CHKSUM =
          <a class="moz-txt-link-rfc2396E" href="file://COPYING;md5=f27defe1e96c2e1ecd4e0c9be8967949   ">"file://COPYING;md5=f27defe1e96c2e1ecd4e0c9be8967949    "</a><br>
           12 <br>
           13 DEPENDS = "ncurses"<br>
           14 <br>
           15 PV_MAJ = <a class="moz-txt-link-rfc2396E" href="mailto:${@bb.data.getVar('PV',d,1).split('.')[0]}">"${@bb.data.getVar('PV',d,1).split('.')[0]}"</a><br>
           16 PV_MIN = <a class="moz-txt-link-rfc2396E" href="mailto:${@bb.data.getVar('PV',d,1).split('.')[1]}">"${@bb.data.getVar('PV',d,1).split('.')[1]}"</a><br>
           17 <br>
           18 SRC_URI = "<a moz-do-not-send="true"
href="https://www.nano-editor.org/dist/v$%7BPV_MAJ%7D.$%7BPV_MIN%7D/nano-$">https://www.nano-editor.org/dist/v${PV_MAJ}.${PV_MIN}/nano-$</a>   
          {PV}.tar.gz"<br>
           19 #SRC_URI = "<a moz-do-not-send="true"
            href="https://www.nano-editor.org/dist/v2.3/nano-2.3.1.tar.gz">https://www.nano-editor.org/dist/v2.3/nano-2.3.1.tar.gz</a>"<br>
           20 <br>
           21 SRC_URI[md5sum] = "af09f8828744b0ea0808d6c19a2b4bfd"<br>
           22 SRC_URI[sha256sum] =
          "b7bace9a8e543b84736d6ef5ce5430305746efea3aacb2439   
          1f692efc6f3c8d3"<br>
           23 <br>
           24 inherit autotools gettext<br>
           25 <br>
           26 RDEPENDS_${PV} = "ncurses"<br>
          <br>
          <br>
        </div>
        <div>2. When I run the bitbake nano, the am getting the error as
          given below,<br>
          <br>
          bitbake nano<br>
          Loading cache: 100%
|###################################################################################################################|
          Time: 0:00:00<br>
          Loaded 1324 entries from dependency cache.<br>
          ERROR: ExpansionError during parsing
/home/satya/Yocto/Practice/poky/build-bbb-2/meta-mylayer/recipes-example/nano/<a
            moz-do-not-send="true" href="http://nano_2.3.1.bb">nano_2.3.1.bb</a>      
          | ETA:  --:--:--<br>
          Traceback (most recent call last):<br>
            File
          "/home/satya/Yocto/Practice/poky/bitbake/lib/bb/data_smart.py",
          line 412, in DataSmart.expandWithRefs(s='<a
            moz-do-not-send="true"
href="https://www.nano-editor.org/dist/v$%7BPV_MAJ%7D.$%7BPV_MIN%7D/nano-$%7BPV%7D.tar.gz">https://www.nano-editor.org/dist/v${PV_MAJ}.${PV_MIN}/nano-${PV}.tar.gz</a>',
          varname='SRC_URI'):<br>
                           try:<br>
              &gt;                s =
          __expand_var_regexp__.sub(varparse.var_sub, s)<br>
                               try:<br>
            File
          "/home/satya/Yocto/Practice/poky/bitbake/lib/bb/data_smart.py",
          line 111, in VariableParse.var_sub(match=&lt;_sre.SRE_Match
          object; span=(34, 43), match='${PV_MAJ}'&gt;):<br>
                           else:<br>
              &gt;                var = self.d.getVarFlag(key,
          "_content")<br>
                           self.references.add(key)<br>
            File
          "/home/satya/Yocto/Practice/poky/bitbake/lib/bb/data_smart.py",
          line 773, in DataSmart.getVarFlag(var='PV_MAJ',
          flag='_content', expand=True, noweakdefault=False,
          parsing=False):<br>
                               cachename = var + "[" + flag + "]"<br>
              &gt;            value = self.expand(value, cachename)<br>
               <br>
            File
          "/home/satya/Yocto/Practice/poky/bitbake/lib/bb/data_smart.py",
          line 436, in
          DataSmart.expand(s=<a class="moz-txt-link-rfc2396E" href="mailto:${@bb.data.getVar('PV',d,1).split('.')[0]}">"${@bb.data.getVar('PV',d,1).split('.')[0]}"</a>,
          varname='PV_MAJ'):<br>
                   def expand(self, s, varname = None):<br>
              &gt;        return self.expandWithRefs(s, varname).value<br>
               <br>
            File
          "/home/satya/Yocto/Practice/poky/bitbake/lib/bb/data_smart.py",
          line 426, in
          DataSmart.expandWithRefs(s=<a class="moz-txt-link-rfc2396E" href="mailto:${@bb.data.getVar('PV',d,1).split('.')[0]}">"${@bb.data.getVar('PV',d,1).split('.')[0]}"</a>,
          varname='PV_MAJ'):<br>
                           except Exception as exc:<br>
              &gt;                raise ExpansionError(varname, s, exc)
          from exc<br>
               <br>
          bb.data_smart.ExpansionError: Failure expanding variable
          PV_MAJ, expression was
          ${@bb.data.getVar('PV',d,1).split('.')[0]} which triggered
          exception AttributeError: module 'bb.data' has no attribute
          'getVar'<br>
          <br>
          <br>
          Summary: There was 1 ERROR message shown, returning a non-zero
          exit code.<br>
          <br>
        </div>
        <div>3. Could not get the solution, any help here. Any patches
          needs to appy here, if yes pls suggest.<br>
          <br>
        </div>
        <div>Thanks,<br>
        </div>
        <div>satya<br>
        </div>
        <div><br>
        </div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
    <pre class="moz-signature" cols="72">-- 
Dominig ar Foll
Senior Software Architect
Intel Open Source Technology Centre</pre>
  </body>
</html>

