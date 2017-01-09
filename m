Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 21C83E006C6; Mon,  9 Jan 2017 10:44:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.49 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f49.google.com (mail-vk0-f49.google.com
	[209.85.213.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0262FE0050B
	for <yocto@yoctoproject.org>; Mon,  9 Jan 2017 10:44:33 -0800 (PST)
Received: by mail-vk0-f49.google.com with SMTP id x75so22039611vke.2
	for <yocto@yoctoproject.org>; Mon, 09 Jan 2017 10:44:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=Ebk8ODmrKhxr3QTf+PJ9QlP+1Uu0QWzCPlCsULfW+Ho=;
	b=c1rzPFVJcGIswOAIdT/oHXS3MVVS5O8wUobHieDaHl9VJeISc9XBPF10zRIgtHCDF1
	uz6ZXEGhwozhnJnJoszpj8ZXTMoV7BKXWiYNEPso6nQZHG0O+ntTs53QugmdJpe6P+P1
	RjTvbfDk1uABnTym3/4pMn8jELtEjSvTKrDRTB8Ef3FXz3qZU6GH6en8eSkRjyEjrGqU
	OMXv0MKR+ZeWpIG6+TTe3FkFYihqOU2Mq0Li9KZ0G7hBaaWCoYKrXTZtqYlDZIDDBlab
	uCAOzl1+FkcTPMkpEk1DYly1RfNHH3z4zhNQ6j4p7YHtLHW5Smzj1uC4QimlepsKy3h1
	Ph1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=Ebk8ODmrKhxr3QTf+PJ9QlP+1Uu0QWzCPlCsULfW+Ho=;
	b=qAsOUKzo+9pHJF3X5nsWpAHIl7WlNyp36s80nhbz2Irb+46BmVqbIC180spEzKL6D+
	fMyVPa3AgnH69P+EPV7pFgo1KrO2W8KPN4hPuGQYGkwbtKB61K+SFlXc5X3Ac1sM1Rdx
	AMcZnn2eJDydJpYZoc2ZDKl4E6CxH2EQbNBJ1OzVXN/nvbMU1vnRt9xloUgjw7u1hpFx
	TisW8CISoStYHJZ6Ar4SGxjfp+gM0kE64hWM4W6McxV7WXc90Hg12EUSgeRXT40I3q09
	/898t/N8wLj+7udYH/sXINRPyScEc8l75wQaGE32xOG3D+pxlGiU0kxgUzpJ1eocIgBb
	7Xdg==
X-Gm-Message-State: AIkVDXIp+ex0xmPCv+giRKz7a1d10w8+L6OxYQbmklWyFgrPn07NZutqg1XHOl+C/E2P/9uYVoQFYpJSmmX+IQ==
X-Received: by 10.31.108.149 with SMTP id j21mr24655287vki.93.1483987472862;
	Mon, 09 Jan 2017 10:44:32 -0800 (PST)
MIME-Version: 1.0
Received: by 10.159.48.222 with HTTP; Mon, 9 Jan 2017 10:44:02 -0800 (PST)
In-Reply-To: <1483714246-6857-1-git-send-email-jose.a.lamego@linux.intel.com>
References: <1483714246-6857-1-git-send-email-jose.a.lamego@linux.intel.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 9 Jan 2017 10:44:02 -0800
Message-ID: <CAMKF1srB=LYj8_Zp+xQu-dnC74QygMuU08jrq_fh7X-rB5s2bQ@mail.gmail.com>
To: Jose Lamego <jose.a.lamego@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Jose Lamego <jose.a.lamego@intel.com>
Subject: Re: [patchwork][PATCH] patchwork/templates/patchwork/series: Improve series view
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
X-List-Received-Date: Mon, 09 Jan 2017 18:44:38 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 6, 2017 at 6:50 AM, Jose Lamego
<jose.a.lamego@linux.intel.com> wrote:
> From: Jose Lamego <jose.a.lamego@intel.com>
>
> Reviewing patches from a series requires heavy usage of the
> browser navigation buttons, providing a poor UX.
>
> This changes allows viewing content from each patch in a series,
> without leaving the series view.
>

The patch looks fine to me. Are you also posting these to upstream patchwor=
k ?

> [YOCTO #10627]
>
> Signed-off-by: Jose Lamego <jose.a.lamego@intel.com>
> ---
>  htdocs/js/series.js                       |  43 +++++++++++
>  patchwork/templates/patchwork/patch.html  |  15 ++--
>  patchwork/templates/patchwork/series.html | 114 ++++++++++++++++--------=
------
>  3 files changed, 113 insertions(+), 59 deletions(-)
>  create mode 100644 htdocs/js/series.js
>
> diff --git a/htdocs/js/series.js b/htdocs/js/series.js
> new file mode 100644
> index 0000000..4f4f477
> --- /dev/null
> +++ b/htdocs/js/series.js
> @@ -0,0 +1,43 @@
> +$(document).ready(function(){
> +    $('[data-toggle=3D"tooltip"]').tooltip();
> +    revTab=3Ddocument.getElementById('revs-list')
> +    coverView=3Ddocument.getElementById('cover-letter-view'),
> +    patchView=3Ddocument.getElementById('patch-view'),
> +    patchList=3Ddocument.getElementById('patches-list')
> +
> +    revTab.style.border=3D'none'
> +    revTab.style.background=3D'transparent'
> +    revTab.style.padding=3D'15px'
> +    coverView.style.display=3D'block'
> +    patchView.style.display=3D'none'
> +    patchList.style.display=3D'none'
> +
> +    document.getElementById('cover-letter-tab').onclick=3Dfunction(){
> +        coverView.style.display=3D'block'
> +        patchView.style.display=3D'none'
> +        patchList.style.display=3D'none'
> +    }
> +
> +    document.getElementById('patches-tab').onclick=3Dfunction(){
> +        coverView.style.display=3D'none'
> +        patchList.style.display=3D'block'
> +        patchView.style.display=3D"none"
> +    }
> +
> +    $('#revs-list').on('change', function(e){
> +        var optionSelected=3D$("option:selected", this)
> +        jQuery('.tab-content div.tab-pane.fade.in.active').
> +        removeClass(' in active')
> +        jQuery('.tab-content div#'+this.value+'.tab-pane.fade').
> +        addClass(' in active')
> +        patchView.style.display=3D'none'
> +    })
> +
> +    $('.patch-link').on('click', function(){
> +        coverView.style.display=3D'none'
> +        patchView.style.display=3D'block'
> +        patchView.innerHTML=3D
> +        '<p style=3D"text-align:center;">Loading patch...</p>'
> +        $("#patch-view").load(this.getAttribute("data-url") + " #patch-b=
ody")
> +    })
> +})
> diff --git a/patchwork/templates/patchwork/patch.html b/patchwork/templat=
es/patchwork/patch.html
> index 5ce540d..59df19d 100644
> --- a/patchwork/templates/patchwork/patch.html
> +++ b/patchwork/templates/patchwork/patch.html
> @@ -7,6 +7,7 @@
>  {% block title %}{{patch.name}}{% endblock %}
>
>  {% block body %}
> +
>  <script type=3D"text/javascript">
>  function toggle_headers(link_id, headers_id)
>  {
> @@ -25,10 +26,12 @@ function toggle_headers(link_id, headers_id)
>
>  }
>  </script>
> -
> +<div id=3D"patch-body">
>  <h1>{{ patch.name }}</h1>
>  <div class=3D"core-info">
>      <span>Submitted by {{ patch.submitter|personify:project }} on {{ pat=
ch.date }}</span>
> +    <span>|</span>
> +    <span>Patch ID: <strong>{{ patch.id }}</strong></span>
>  </div>
>
>  <h2>Details</h2>
> @@ -134,10 +137,10 @@ function toggle_headers(link_id, headers_id)
>        <form method=3D"post">
>         {% csrf_token %}
>         <input type=3D"hidden" name=3D"action" value=3D"addtobundle"/>
> -       <select name=3D"bundle_id"/>
> -        {% for bundle in bundles %}
> -         <option value=3D"{{bundle.id}}">{{bundle.name}}</option>
> -        {% endfor %}
> +        <select name=3D"bundle_id">
> +         {% for bundle in bundles %}
> +          <option value=3D"{{bundle.id}}">{{bundle.name}}</option>
> +         {% endfor %}
>          </select>
>         <input value=3D"Add" type=3D"submit"/>
>        </form>
> @@ -219,5 +222,5 @@ function toggle_headers(link_id, headers_id)
>  </pre>
>  </div>
>  {% endfor %}
> -
> +</div>
>  {% endblock %}
> diff --git a/patchwork/templates/patchwork/series.html b/patchwork/templa=
tes/patchwork/series.html
> index c0a5261..6c35212 100644
> --- a/patchwork/templates/patchwork/series.html
> +++ b/patchwork/templates/patchwork/series.html
> @@ -1,6 +1,7 @@
>  {% extends "base.html" %}
>
>  {% load person %}
> +{% load static %}
>
>  {% block title %}{{project.name}}{% endblock %}
>  {% block headers %}
> @@ -9,64 +10,70 @@ $(function () {
>      pw.setup_series({ patches: 'series-patchlist' });
>  });
>  </script>
> +<script type=3D"text/javascript" src=3D"{% static "js/series.js" %}"></s=
cript>
>  {% endblock %}
>
>  {% block body %}
> -<h1>{{ series.name }}</h1>
> -
> -<div class=3D"core-info">
> -  <span>Submitted by {{ series.submitter|personify:project }} on {{ seri=
es.submitted }}</span>
> -</div>
> -
> -<h2>Details</h2>
> +  <h1>{{ series.name }}</h1>
> +
> +  <div class=3D"core-info">
> +    <span data-toggle=3D"tooltip" title=3D"View all patches submitted by=
 this user">Submitted by {{ series.submitter|personify:project }} on {{ ser=
ies.submitted }}</span>
> +    <span>|</span>
> +    <span>Reviewer: {{ series.reviewer }}</span>
> +    <span>|</span>
> +    <span>Updated on: {{ series.last_updated }}</span>
> +    <span>|</span>
> +    <span>Series ID: <strong>{{ series.pk }}</strong></span>
> +  </div>
>
> -<table class=3D"patchmeta">
> -  <tr>
> -    <th>Reviewer</th>
> -{% if series.reviewer %}
> -    <td>{{ series.reviewer.name }}</td>
> -{% else %}
> -    <td><em class=3D"text-muted">None</em></td>
> -{% endif %}
> -  </tr>
> -  <tr>
> -    <th>Submitted</th>
> -    <td>{{ series.submitted }}</td>
> -  </tr>
> -  <tr>
> -    <th>Last Updated</th>
> -    <td>{{ series.last_updated }}</td>
> -  </tr>
> -  <tr>
> -    <th>Revision</th>
> -    <td>{{ series.last_revision.version }}</td>
> -  </tr>
> -</table>
> +  <nav class=3D"navbar navbar-default" role=3D"navigation" id=3D"series-=
navigation">
> +    <div class=3D"container-fluid">
> +      <div class=3D"navbar-header">
> +        <button type=3D"button" class=3D"navbar-toggle collapsed" data-t=
oggle=3D"collapse" data-target=3D"#navbar-collapse2">
> +          <span class=3D"sr-only">Toggle navigation</span>
> +          <span class=3D"icon-bar"></span>
> +          <span class=3D"icon-bar"></span>
> +          <span class=3D"icon-bar"></span>
> +        </button>
> +      </div>
> +      <div class=3D"collapse navbar-collapse" id=3D"navbar-collapse2">
> +        <ul class=3D"nav navbar-nav">
> +          <li>
> +            <select id=3D"revs-list" data-toggle=3D"tooltip" title=3D"Se=
lect a Series Revision">
> +              {% for revision in revisions %}
> +                <option {% if forloop.last %}selected=3D"selected"{%endi=
f%} value=3D'rev{{ revision.version }}'>
> +                  Revision <strong>{{ revision.version }}</strong>
> +                </option>
> +              {% endfor %}
> +            </select>
> +          </li>
> +          <li id=3D"cover-letter-tab">
> +            <a href=3D"#" data-toggle=3D"tooltip" title=3D"View the Cove=
r Letter if available">Cover letter</a>
> +          </li>
> +          <li id=3D"patches-tab">
> +            <a href=3D"#" data-toggle=3D"tooltip" title=3D"List patches =
from selected revision">
> +              Patches ({{ series.latest_revision.n_patches }})
> +            </a>
> +          </li>
> +        </ul>
> +      </div>
> +    </div>
> +  </nav>
>
> +  <div id=3D"cover-letter-view">
>  {% if cover_letter %}
> -<h2>Cover Letter</h2>
> -
> -<div class=3D"comment">
> -  <pre class=3D"content">
> -{{ cover_letter }}
> -  </pre>
> -</div>
> -
> +  <h2>Cover Letter</h2>
> +  <div class=3D"comment">
> +    <pre class=3D"content">
> +      {{ cover_letter }}
> +    </pre>
> +  </div>
> +{% else %}
> +  <h2 style=3D"color:#909090">No cover letter was found for this series.=
</h2>
>  {% endif %}
> +  </div>
>
> -<h2>Revisions</h2>
> -
> -<div>
> -
> -  <ul class=3D"nav nav-pills small-pills" data-tabs=3D"tabs" role=3D"tab=
list">
> -{% for revision in revisions %}
> -    <li role=3D"presentation"{% if forloop.last %} class=3D"active"{%end=
if%}>
> -      <a data-toggle=3D"pill" href=3D"#rev{{ revision.version }}">rev {{=
 revision.version }}</a>
> -    </li>
> -{% endfor %}
> -  </ul>
> -
> -  <div class=3D"tab-content">
> +  <div class=3D"tab-content" id=3D"patches-list">
>  {% for revision in revisions %}
>      <div role=3D"tabpanel" id=3D"rev{{ revision.version }}"
>           class=3D"tab-pane fade{% if forloop.last %} in active{% endif %=
}">
> @@ -87,8 +94,7 @@ $(function () {
>          {% for patch in revision.patch_list %}
>              <tr>
>                <td></td>
> -              <td><a href=3D"{% url 'patchwork.views.patch.patch' patch_=
id=3Dpatch.id %}"
> -                >{{ patch.name|default:"[no subject]"|truncatechars:100 =
}}</a></td>
> +              <td><a href=3D"#" class=3D"patch-link" data-toggle=3D"tool=
tip" title=3D"Click to view the patch at bottom section"data-url=3D"{% url =
'patchwork.views.patch.patch' patch_id=3Dpatch.id %}">{{ patch.name|default=
:"[no subject]"|truncatechars:100 }}</a></td>
>                <td>{{ patch.submitter|personify:project }}</td>
>                <td>{{ patch.state }}</td>
>              <tr>
> @@ -101,7 +107,7 @@ $(function () {
>      <h3>Tests</h3>
>
>      <div class=3D"well transparent">
> -      <div class=3D"panel-group" id=3D"test-accordion" role=3D"tablist" =
aria-multiselectable=3D"true">
> +      <div class=3D"panel-group" id=3D"test-accordion" role=3D"tablist" =
aria-multiselectable=3D"true" data-toggle=3D"tooltip" title=3D"Click to vie=
w/hide available test results">
>          {% for test_result in revision.test_results %}
>          {% include "patchwork/test-result.html" %}
>          {% endfor %}
> @@ -114,6 +120,8 @@ $(function () {
>  {% endfor %}
>    </div>
>
> +  <div id=3D"patch-view" class=3D"container-fluid"></div>
> +
>  </div>
>
>  {% endblock %}
> --
> 1.9.1
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

